; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_fwio.c_p54_download_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_fwio.c_p54_download_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54_common = type { i32, i32, i32*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.p54_eeprom_lm86 = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i8*, i32 }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.sk_buff = type { i32 }

@P54_HDR_FLAG_CONTROL = common dso_local global i32 0, align 4
@P54_CONTROL_TYPE_EEPROM_READBACK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"LOCK\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"device does not respond or signal received!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p54_download_eeprom(%struct.p54_common* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.p54_common*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.p54_eeprom_lm86*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.p54_common* %0, %struct.p54_common** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %16 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %17, 1289
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i64 40, i64* %12, align 8
  br label %21

20:                                               ; preds = %4
  store i64 4, i64* %12, align 8
  br label %21

21:                                               ; preds = %20, %19
  %22 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %23 = load i32, i32* @P54_HDR_FLAG_CONTROL, align 4
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* %9, align 8
  %26 = add i64 %24, %25
  %27 = load i32, i32* @P54_CONTROL_TYPE_EEPROM_READBACK, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.sk_buff* @p54_alloc_skb(%struct.p54_common* %22, i32 %23, i64 %26, i32 %27, i32 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %11, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %21
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %112

39:                                               ; preds = %21
  %40 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %41 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %40, i32 0, i32 1
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load i8*, i8** %7, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %46 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %45, i32 0, i32 2
  store i32* %44, i32** %46, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %48, %49
  %51 = call %struct.p54_eeprom_lm86* @skb_put(%struct.sk_buff* %47, i64 %50)
  store %struct.p54_eeprom_lm86* %51, %struct.p54_eeprom_lm86** %10, align 8
  %52 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %53 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %54, 1289
  br i1 %55, label %56, label %67

56:                                               ; preds = %39
  %57 = load i64, i64* %8, align 8
  %58 = call i8* @cpu_to_le16(i64 %57)
  %59 = load %struct.p54_eeprom_lm86*, %struct.p54_eeprom_lm86** %10, align 8
  %60 = getelementptr inbounds %struct.p54_eeprom_lm86, %struct.p54_eeprom_lm86* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i8* %58, i8** %61, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i8* @cpu_to_le16(i64 %62)
  %64 = load %struct.p54_eeprom_lm86*, %struct.p54_eeprom_lm86** %10, align 8
  %65 = getelementptr inbounds %struct.p54_eeprom_lm86, %struct.p54_eeprom_lm86* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i8* %63, i8** %66, align 8
  br label %86

67:                                               ; preds = %39
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @cpu_to_le32(i64 %68)
  %70 = load %struct.p54_eeprom_lm86*, %struct.p54_eeprom_lm86** %10, align 8
  %71 = getelementptr inbounds %struct.p54_eeprom_lm86, %struct.p54_eeprom_lm86* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  store i32 %69, i32* %72, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call i8* @cpu_to_le16(i64 %73)
  %75 = load %struct.p54_eeprom_lm86*, %struct.p54_eeprom_lm86** %10, align 8
  %76 = getelementptr inbounds %struct.p54_eeprom_lm86, %struct.p54_eeprom_lm86* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  store i8* %74, i8** %77, align 8
  %78 = load %struct.p54_eeprom_lm86*, %struct.p54_eeprom_lm86** %10, align 8
  %79 = getelementptr inbounds %struct.p54_eeprom_lm86, %struct.p54_eeprom_lm86* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i32 15, i32* %80, align 8
  %81 = load %struct.p54_eeprom_lm86*, %struct.p54_eeprom_lm86** %10, align 8
  %82 = getelementptr inbounds %struct.p54_eeprom_lm86, %struct.p54_eeprom_lm86* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @memcpy(i32 %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %86

86:                                               ; preds = %67, %56
  %87 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %89 = call i32 @p54_tx(%struct.p54_common* %87, %struct.sk_buff* %88)
  %90 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %91 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %90, i32 0, i32 4
  %92 = load i32, i32* @HZ, align 4
  %93 = call i64 @wait_for_completion_interruptible_timeout(i32* %91, i32 %92)
  store i64 %93, i64* %14, align 8
  %94 = load i64, i64* %14, align 8
  %95 = icmp sle i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %86
  %97 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %98 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %97, i32 0, i32 3
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @wiphy_err(i32 %101, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i32, i32* @EBUSY, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %13, align 4
  br label %105

105:                                              ; preds = %96, %86
  %106 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %107 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %106, i32 0, i32 2
  store i32* null, i32** %107, align 8
  %108 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %109 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %108, i32 0, i32 1
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load i32, i32* %13, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %105, %36
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local %struct.sk_buff* @p54_alloc_skb(%struct.p54_common*, i32, i64, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.p54_eeprom_lm86* @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @p54_tx(%struct.p54_common*, %struct.sk_buff*) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @wiphy_err(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
