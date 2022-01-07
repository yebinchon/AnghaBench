; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32, i64*, i32 }

@.str = private unnamed_addr constant [42 x i8] c"DST Communication Initialization Failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Trying to recover..\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Recovery Failed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"PIO Disable Failed.\0A\00", align 1
@DST_TYPE_HAS_FW_1 = common dso_local global i32 0, align 4
@GET_ACK = common dso_local global i32 0, align 4
@ACK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"write not acknowledged 0x%02x\0A\00", align 1
@NO_DELAY = common dso_local global i32 0, align 4
@FIXED_COMM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"Recovery failed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"checksum failure\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*, i64*, i64)* @dst_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_command(%struct.dst_state* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dst_state*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.dst_state* %0, %struct.dst_state** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %10 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %13 = call i64 @dst_comm_init(%struct.dst_state* %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %135

17:                                               ; preds = %3
  %18 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @write_dst(%struct.dst_state* %18, i64* %19, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = call i32 (i32, i8*, ...) @dprintk(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %26 = call i64 @dst_error_recovery(%struct.dst_state* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %135

30:                                               ; preds = %23
  br label %135

31:                                               ; preds = %17
  %32 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %33 = call i64 @dst_pio_disable(%struct.dst_state* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %135

37:                                               ; preds = %31
  %38 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %39 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @DST_TYPE_HAS_FW_1, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = call i32 @mdelay(i32 3)
  br label %46

46:                                               ; preds = %44, %37
  %47 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %48 = load i32, i32* @GET_ACK, align 4
  %49 = call i64 @read_dst(%struct.dst_state* %47, i64* %8, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = call i32 (i32, i8*, ...) @dprintk(i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %54 = call i64 @dst_error_recovery(%struct.dst_state* %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 (i32, i8*, ...) @dprintk(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %135

58:                                               ; preds = %51
  br label %135

59:                                               ; preds = %46
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @ACK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i64, i64* %8, align 8
  %65 = call i32 (i32, i8*, ...) @dprintk(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %64)
  br label %135

66:                                               ; preds = %59
  %67 = load i64, i64* %7, align 8
  %68 = icmp sge i64 %67, 2
  br i1 %68, label %69, label %85

69:                                               ; preds = %66
  %70 = load i64*, i64** %6, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load i64*, i64** %6, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 1
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load i64*, i64** %6, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 3
  br i1 %83, label %84, label %85

84:                                               ; preds = %79, %74
  br label %135

85:                                               ; preds = %79, %69, %66
  %86 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %87 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @DST_TYPE_HAS_FW_1, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = call i32 @mdelay(i32 3)
  br label %96

94:                                               ; preds = %85
  %95 = call i32 @udelay(i32 2000)
  br label %96

96:                                               ; preds = %94, %92
  %97 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %98 = load i32, i32* @NO_DELAY, align 4
  %99 = call i32 @dst_wait_dst_ready(%struct.dst_state* %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  br label %135

102:                                              ; preds = %96
  %103 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %104 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %105 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %104, i32 0, i32 1
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* @FIXED_COMM, align 4
  %108 = call i64 @read_dst(%struct.dst_state* %103, i64* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %102
  %111 = call i32 (i32, i8*, ...) @dprintk(i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %112 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %113 = call i64 @dst_error_recovery(%struct.dst_state* %112)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = call i32 (i32, i8*, ...) @dprintk(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %135

117:                                              ; preds = %110
  br label %135

118:                                              ; preds = %102
  %119 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %120 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %119, i32 0, i32 1
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 7
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %125 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %124, i32 0, i32 1
  %126 = load i64*, i64** %125, align 8
  %127 = call i64 @dst_check_sum(i64* %126, i32 7)
  %128 = icmp ne i64 %123, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %118
  %130 = call i32 (i32, i8*, ...) @dprintk(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %135

131:                                              ; preds = %118
  %132 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %133 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %132, i32 0, i32 2
  %134 = call i32 @mutex_unlock(i32* %133)
  store i32 0, i32* %4, align 4
  br label %141

135:                                              ; preds = %129, %117, %115, %101, %84, %63, %58, %56, %35, %30, %28, %15
  %136 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %137 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %136, i32 0, i32 2
  %138 = call i32 @mutex_unlock(i32* %137)
  %139 = load i32, i32* @EIO, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %135, %131
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @dst_comm_init(%struct.dst_state*) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i64 @write_dst(%struct.dst_state*, i64*, i64) #1

declare dso_local i64 @dst_error_recovery(%struct.dst_state*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @dst_pio_disable(%struct.dst_state*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i64 @read_dst(%struct.dst_state*, i64*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dst_wait_dst_ready(%struct.dst_state*, i32) #1

declare dso_local i64 @dst_check_sum(i64*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
