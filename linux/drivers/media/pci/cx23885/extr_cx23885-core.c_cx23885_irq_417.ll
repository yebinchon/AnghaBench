; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_irq_417.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_irq_417.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32*, i32, %struct.cx23885_tsport }
%struct.cx23885_tsport = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"status: 0x%08x  mask: 0x%08x count: 0x%x\0A\00", align 1
@VID_B_MSK_BAD_PKT = common dso_local global i32 0, align 4
@VID_B_MSK_OPC_ERR = common dso_local global i32 0, align 4
@VID_B_MSK_VBI_OPC_ERR = common dso_local global i32 0, align 4
@VID_B_MSK_SYNC = common dso_local global i32 0, align 4
@VID_B_MSK_VBI_SYNC = common dso_local global i32 0, align 4
@VID_B_MSK_OF = common dso_local global i32 0, align 4
@VID_B_MSK_VBI_OF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"%s: V4L mpeg risc op code error, status = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"        VID_B_MSK_BAD_PKT\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"        VID_B_MSK_OPC_ERR\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"        VID_B_MSK_VBI_OPC_ERR\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"        VID_B_MSK_SYNC\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"        VID_B_MSK_VBI_SYNC\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"        VID_B_MSK_OF\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"        VID_B_MSK_VBI_OF\0A\00", align 1
@VID_B_MSK_RISCI1 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"        VID_B_MSK_RISCI1\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx23885_irq_417(%struct.cx23885_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx23885_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cx23885_tsport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %10 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %9, i32 0, i32 2
  store %struct.cx23885_tsport* %10, %struct.cx23885_tsport** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %3, align 4
  br label %164

15:                                               ; preds = %2
  %16 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %6, align 8
  %17 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @cx_read(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %6, align 8
  %22 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cx_read(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (i32, i8*, ...) @dprintk(i32 7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @VID_B_MSK_BAD_PKT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %61, label %31

31:                                               ; preds = %15
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @VID_B_MSK_OPC_ERR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %61, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @VID_B_MSK_VBI_OPC_ERR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %61, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @VID_B_MSK_SYNC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @VID_B_MSK_VBI_SYNC, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @VID_B_MSK_OF, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @VID_B_MSK_VBI_OF, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %134

61:                                               ; preds = %56, %51, %46, %41, %36, %31, %15
  %62 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %63 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @VID_B_MSK_BAD_PKT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %61
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @VID_B_MSK_OPC_ERR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %73
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @VID_B_MSK_VBI_OPC_ERR, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %80
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @VID_B_MSK_SYNC, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %87
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @VID_B_MSK_VBI_SYNC, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %94
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @VID_B_MSK_OF, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %101
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @VID_B_MSK_VBI_OF, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %108
  %116 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %6, align 8
  %117 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %6, align 8
  %120 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @cx_clear(i32 %118, i32 %121)
  %123 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %124 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %125 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %6, align 8
  %128 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = call i32 @cx23885_sram_channel_dump(%struct.cx23885_dev* %123, i32* %130)
  %132 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %133 = call i32 @cx23885_417_check_encoder(%struct.cx23885_dev* %132)
  br label %153

134:                                              ; preds = %56
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @VID_B_MSK_RISCI1, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %152

139:                                              ; preds = %134
  %140 = call i32 (i32, i8*, ...) @dprintk(i32 7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %141 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %6, align 8
  %142 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %141, i32 0, i32 2
  %143 = call i32 @spin_lock(i32* %142)
  %144 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %6, align 8
  %145 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %6, align 8
  %146 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %145, i32 0, i32 3
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @cx23885_wakeup(%struct.cx23885_tsport* %144, i32* %146, i32 %147)
  %149 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %6, align 8
  %150 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %149, i32 0, i32 2
  %151 = call i32 @spin_unlock(i32* %150)
  br label %152

152:                                              ; preds = %139, %134
  br label %153

153:                                              ; preds = %152, %115
  %154 = load i32, i32* %5, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %6, align 8
  %158 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @cx_write(i32 %159, i32 %160)
  store i32 1, i32* %8, align 4
  br label %162

162:                                              ; preds = %156, %153
  %163 = load i32, i32* %8, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %162, %13
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @cx_clear(i32, i32) #1

declare dso_local i32 @cx23885_sram_channel_dump(%struct.cx23885_dev*, i32*) #1

declare dso_local i32 @cx23885_417_check_encoder(%struct.cx23885_dev*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cx23885_wakeup(%struct.cx23885_tsport*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cx_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
