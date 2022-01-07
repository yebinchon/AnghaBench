; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_dln2.c__dln2_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_dln2.c__dln2_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dln2_dev = type { i32, i64, i32, i32, %struct.dln2_mod_rx_slots*, %struct.TYPE_4__* }
%struct.dln2_mod_rx_slots = type { %struct.dln2_rx_context* }
%struct.dln2_rx_context = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.dln2_response* }
%struct.dln2_response = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@DLN2_USB_TIMEOUT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"USB write failed: %d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"%d received response with error %d\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dln2_dev*, i64, i64, i8*, i32, i8*, i32*)* @_dln2_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dln2_transfer(%struct.dln2_dev* %0, i64 %1, i64 %2, i8* %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.dln2_dev*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.dln2_response*, align 8
  %19 = alloca %struct.dln2_rx_context*, align 8
  %20 = alloca %struct.device*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.dln2_mod_rx_slots*, align 8
  %23 = alloca i32, align 4
  store %struct.dln2_dev* %0, %struct.dln2_dev** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %24 = load %struct.dln2_dev*, %struct.dln2_dev** %9, align 8
  %25 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %24, i32 0, i32 5
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store %struct.device* %27, %struct.device** %20, align 8
  %28 = load i32, i32* @DLN2_USB_TIMEOUT, align 4
  %29 = call i64 @msecs_to_jiffies(i32 %28)
  store i64 %29, i64* %21, align 8
  %30 = load %struct.dln2_dev*, %struct.dln2_dev** %9, align 8
  %31 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %30, i32 0, i32 4
  %32 = load %struct.dln2_mod_rx_slots*, %struct.dln2_mod_rx_slots** %31, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds %struct.dln2_mod_rx_slots, %struct.dln2_mod_rx_slots* %32, i64 %33
  store %struct.dln2_mod_rx_slots* %34, %struct.dln2_mod_rx_slots** %22, align 8
  %35 = load %struct.dln2_dev*, %struct.dln2_dev** %9, align 8
  %36 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %35, i32 0, i32 2
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.dln2_dev*, %struct.dln2_dev** %9, align 8
  %39 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %7
  %43 = load %struct.dln2_dev*, %struct.dln2_dev** %9, align 8
  %44 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %50

47:                                               ; preds = %7
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %16, align 4
  br label %50

50:                                               ; preds = %47, %42
  %51 = load %struct.dln2_dev*, %struct.dln2_dev** %9, align 8
  %52 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %51, i32 0, i32 2
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %16, align 4
  store i32 %57, i32* %8, align 4
  br label %193

58:                                               ; preds = %50
  %59 = load %struct.dln2_dev*, %struct.dln2_dev** %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @alloc_rx_slot(%struct.dln2_dev* %59, i64 %60)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %17, align 4
  store i32 %65, i32* %16, align 4
  br label %172

66:                                               ; preds = %58
  %67 = load %struct.dln2_dev*, %struct.dln2_dev** %9, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i32, i32* %17, align 4
  %71 = load i8*, i8** %12, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @dln2_send_wait(%struct.dln2_dev* %67, i64 %68, i64 %69, i32 %70, i8* %71, i32 %72)
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %66
  %77 = load %struct.device*, %struct.device** %20, align 8
  %78 = load i32, i32* %16, align 4
  %79 = call i32 @dev_err(%struct.device* %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %167

80:                                               ; preds = %66
  %81 = load %struct.dln2_mod_rx_slots*, %struct.dln2_mod_rx_slots** %22, align 8
  %82 = getelementptr inbounds %struct.dln2_mod_rx_slots, %struct.dln2_mod_rx_slots* %81, i32 0, i32 0
  %83 = load %struct.dln2_rx_context*, %struct.dln2_rx_context** %82, align 8
  %84 = load i32, i32* %17, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.dln2_rx_context, %struct.dln2_rx_context* %83, i64 %85
  store %struct.dln2_rx_context* %86, %struct.dln2_rx_context** %19, align 8
  %87 = load %struct.dln2_rx_context*, %struct.dln2_rx_context** %19, align 8
  %88 = getelementptr inbounds %struct.dln2_rx_context, %struct.dln2_rx_context* %87, i32 0, i32 1
  %89 = load i64, i64* %21, align 8
  %90 = call i32 @wait_for_completion_interruptible_timeout(i32* %88, i64 %89)
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %16, align 4
  %92 = icmp sle i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %80
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* @ETIMEDOUT, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %16, align 4
  br label %99

99:                                               ; preds = %96, %93
  br label %167

100:                                              ; preds = %80
  store i32 0, i32* %16, align 4
  br label %101

101:                                              ; preds = %100
  %102 = load %struct.dln2_dev*, %struct.dln2_dev** %9, align 8
  %103 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %16, align 4
  br label %167

109:                                              ; preds = %101
  %110 = load %struct.dln2_rx_context*, %struct.dln2_rx_context** %19, align 8
  %111 = getelementptr inbounds %struct.dln2_rx_context, %struct.dln2_rx_context* %110, i32 0, i32 0
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load %struct.dln2_response*, %struct.dln2_response** %113, align 8
  store %struct.dln2_response* %114, %struct.dln2_response** %18, align 8
  %115 = load %struct.dln2_response*, %struct.dln2_response** %18, align 8
  %116 = getelementptr inbounds %struct.dln2_response, %struct.dln2_response* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @le16_to_cpu(i32 %118)
  store i32 %119, i32* %23, align 4
  %120 = load i32, i32* %23, align 4
  %121 = sext i32 %120 to i64
  %122 = icmp ult i64 %121, 8
  br i1 %122, label %123, label %126

123:                                              ; preds = %109
  %124 = load i32, i32* @EPROTO, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %16, align 4
  br label %167

126:                                              ; preds = %109
  %127 = load %struct.dln2_response*, %struct.dln2_response** %18, align 8
  %128 = getelementptr inbounds %struct.dln2_response, %struct.dln2_response* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @le16_to_cpu(i32 %129)
  %131 = icmp sgt i32 %130, 128
  br i1 %131, label %132, label %142

132:                                              ; preds = %126
  %133 = load %struct.device*, %struct.device** %20, align 8
  %134 = load i64, i64* %10, align 8
  %135 = load %struct.dln2_response*, %struct.dln2_response** %18, align 8
  %136 = getelementptr inbounds %struct.dln2_response, %struct.dln2_response* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @le16_to_cpu(i32 %137)
  %139 = call i32 @dev_dbg(%struct.device* %133, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %134, i32 %138)
  %140 = load i32, i32* @EREMOTEIO, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %16, align 4
  br label %167

142:                                              ; preds = %126
  %143 = load i8*, i8** %14, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %142
  br label %167

146:                                              ; preds = %142
  %147 = load i32*, i32** %15, align 8
  %148 = load i32, i32* %147, align 4
  %149 = zext i32 %148 to i64
  %150 = load i32, i32* %23, align 4
  %151 = sext i32 %150 to i64
  %152 = sub i64 %151, 8
  %153 = icmp ugt i64 %149, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %146
  %155 = load i32, i32* %23, align 4
  %156 = sext i32 %155 to i64
  %157 = sub i64 %156, 8
  %158 = trunc i64 %157 to i32
  %159 = load i32*, i32** %15, align 8
  store i32 %158, i32* %159, align 4
  br label %160

160:                                              ; preds = %154, %146
  %161 = load i8*, i8** %14, align 8
  %162 = load %struct.dln2_response*, %struct.dln2_response** %18, align 8
  %163 = getelementptr inbounds %struct.dln2_response, %struct.dln2_response* %162, i64 1
  %164 = load i32*, i32** %15, align 8
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @memcpy(i8* %161, %struct.dln2_response* %163, i32 %165)
  br label %167

167:                                              ; preds = %160, %145, %132, %123, %106, %99, %76
  %168 = load %struct.dln2_dev*, %struct.dln2_dev** %9, align 8
  %169 = load i64, i64* %10, align 8
  %170 = load i32, i32* %17, align 4
  %171 = call i32 @free_rx_slot(%struct.dln2_dev* %168, i64 %169, i32 %170)
  br label %172

172:                                              ; preds = %167, %64
  %173 = load %struct.dln2_dev*, %struct.dln2_dev** %9, align 8
  %174 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %173, i32 0, i32 2
  %175 = call i32 @spin_lock(i32* %174)
  %176 = load %struct.dln2_dev*, %struct.dln2_dev** %9, align 8
  %177 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %177, align 4
  %180 = load %struct.dln2_dev*, %struct.dln2_dev** %9, align 8
  %181 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %180, i32 0, i32 2
  %182 = call i32 @spin_unlock(i32* %181)
  %183 = load %struct.dln2_dev*, %struct.dln2_dev** %9, align 8
  %184 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %172
  %188 = load %struct.dln2_dev*, %struct.dln2_dev** %9, align 8
  %189 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %188, i32 0, i32 0
  %190 = call i32 @wake_up(i32* %189)
  br label %191

191:                                              ; preds = %187, %172
  %192 = load i32, i32* %16, align 4
  store i32 %192, i32* %8, align 4
  br label %193

193:                                              ; preds = %191, %56
  %194 = load i32, i32* %8, align 4
  ret i32 %194
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @alloc_rx_slot(%struct.dln2_dev*, i64) #1

declare dso_local i32 @dln2_send_wait(%struct.dln2_dev*, i64, i64, i32, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i32) #1

declare dso_local i32 @memcpy(i8*, %struct.dln2_response*, i32) #1

declare dso_local i32 @free_rx_slot(%struct.dln2_dev*, i64, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
