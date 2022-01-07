; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_mceusb.c_mceusb_tx_ir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_mceusb.c_mceusb_tx_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.mceusb_dev* }
%struct.mceusb_dev = type { i32 }

@MCE_CMD_PORT_IR = common dso_local global i32 0, align 4
@MCE_CMD_SETIRTXPORTS = common dso_local global i32 0, align 4
@MCE_IRBUF_SIZE = common dso_local global i32 0, align 4
@MCE_TIME_UNIT = common dso_local global i32 0, align 4
@MCE_PACKET_SIZE = common dso_local global i32 0, align 4
@MCE_IRDATA_HEADER = common dso_local global i32 0, align 4
@MCE_MAX_PULSE_LENGTH = common dso_local global i32 0, align 4
@MCE_PULSE_BIT = common dso_local global i32 0, align 4
@MCE_IRDATA_TRAILER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32*, i32)* @mceusb_tx_ir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mceusb_tx_ir(%struct.rc_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rc_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mceusb_dev*, align 8
  %9 = alloca [3 x i32], align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %19 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %18, i32 0, i32 0
  %20 = load %struct.mceusb_dev*, %struct.mceusb_dev** %19, align 8
  store %struct.mceusb_dev* %20, %struct.mceusb_dev** %8, align 8
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %22 = load i32, i32* @MCE_CMD_PORT_IR, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds i32, i32* %21, i64 1
  %24 = load i32, i32* @MCE_CMD_SETIRTXPORTS, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* @MCE_IRBUF_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %10, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %30 = load %struct.mceusb_dev*, %struct.mceusb_dev** %8, align 8
  %31 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %32, i32* %33, align 4
  %34 = load %struct.mceusb_dev*, %struct.mceusb_dev** %8, align 8
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %36 = call i32 @mce_command_out(%struct.mceusb_dev* %34, i32* %35, i32 12)
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %141, %3
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %144

41:                                               ; preds = %37
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MCE_TIME_UNIT, align 4
  %48 = udiv i32 %46, %47
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %139, %41
  %50 = load i32, i32* %13, align 4
  %51 = icmp ugt i32 %50, 0
  br i1 %51, label %52, label %140

52:                                               ; preds = %49
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @MCE_PACKET_SIZE, align 4
  %55 = srem i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %52
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @MCE_IRBUF_SIZE, align 4
  %60 = sub nsw i32 %59, 1
  %61 = icmp sge i32 %58, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load %struct.mceusb_dev*, %struct.mceusb_dev** %8, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @mce_write(%struct.mceusb_dev* %63, i32* %29, i32 %64)
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %16, align 4
  store i32 %69, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %176

70:                                               ; preds = %62
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %70, %57
  %72 = load i32, i32* @MCE_IRDATA_HEADER, align 4
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %29, i64 %75
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %71, %52
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @MCE_MAX_PULSE_LENGTH, align 4
  %80 = icmp ule i32 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %29, i64 %84
  store i32 %82, i32* %85, align 4
  store i32 0, i32* %13, align 4
  br label %94

86:                                               ; preds = %77
  %87 = load i32, i32* @MCE_MAX_PULSE_LENGTH, align 4
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %29, i64 %89
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* @MCE_MAX_PULSE_LENGTH, align 4
  %92 = load i32, i32* %13, align 4
  %93 = sub i32 %92, %91
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %86, %81
  %95 = load i32, i32* %14, align 4
  %96 = and i32 %95, 1
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %101

99:                                               ; preds = %94
  %100 = load i32, i32* @MCE_PULSE_BIT, align 4
  br label %101

101:                                              ; preds = %99, %98
  %102 = phi i32 [ 0, %98 ], [ %100, %99 ]
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %29, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %102
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* @MCE_IRBUF_SIZE, align 4
  %112 = icmp sge i32 %110, %111
  br i1 %112, label %113, label %139

113:                                              ; preds = %101
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* @MCE_PACKET_SIZE, align 4
  %116 = srem i32 %114, %115
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %113
  %120 = load i32, i32* @MCE_PACKET_SIZE, align 4
  %121 = load i32, i32* %15, align 4
  %122 = sub nsw i32 %120, %121
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %15, align 4
  %125 = sub nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %29, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %128, %122
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %119, %113
  %131 = load %struct.mceusb_dev*, %struct.mceusb_dev** %8, align 8
  %132 = load i32, i32* %12, align 4
  %133 = call i32 @mce_write(%struct.mceusb_dev* %131, i32* %29, i32 %132)
  store i32 %133, i32* %16, align 4
  %134 = load i32, i32* %16, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = load i32, i32* %16, align 4
  store i32 %137, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %176

138:                                              ; preds = %130
  store i32 0, i32* %12, align 4
  br label %139

139:                                              ; preds = %138, %101
  br label %49

140:                                              ; preds = %49
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %14, align 4
  br label %37

144:                                              ; preds = %37
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* @MCE_PACKET_SIZE, align 4
  %147 = srem i32 %145, %146
  store i32 %147, i32* %15, align 4
  %148 = load i32, i32* %15, align 4
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %144
  %151 = load i32, i32* @MCE_PACKET_SIZE, align 4
  %152 = load i32, i32* %15, align 4
  %153 = sub nsw i32 %151, %152
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* %15, align 4
  %156 = sub nsw i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %29, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = sub nsw i32 %159, %153
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %150, %144
  %162 = load i32, i32* @MCE_IRDATA_TRAILER, align 4
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %12, align 4
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i32, i32* %29, i64 %165
  store i32 %162, i32* %166, align 4
  %167 = load %struct.mceusb_dev*, %struct.mceusb_dev** %8, align 8
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @mce_write(%struct.mceusb_dev* %167, i32* %29, i32 %168)
  store i32 %169, i32* %16, align 4
  %170 = load i32, i32* %16, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %161
  %173 = load i32, i32* %16, align 4
  store i32 %173, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %176

174:                                              ; preds = %161
  %175 = load i32, i32* %7, align 4
  store i32 %175, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %176

176:                                              ; preds = %174, %172, %136, %68
  %177 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %177)
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mce_command_out(%struct.mceusb_dev*, i32*, i32) #2

declare dso_local i32 @mce_write(%struct.mceusb_dev*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
