; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_channel.c_brcms_c_valid_chanspec_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_channel.c_brcms_c_valid_chanspec_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_cm_info = type { %struct.brcms_c_info* }
%struct.brcms_c_info = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"wl%d: malformed chanspec 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_cm_info*, i32)* @brcms_c_valid_chanspec_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_c_valid_chanspec_ext(%struct.brcms_cm_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcms_cm_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcms_c_info*, align 8
  %7 = alloca i32, align 4
  store %struct.brcms_cm_info* %0, %struct.brcms_cm_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.brcms_cm_info*, %struct.brcms_cm_info** %4, align 8
  %9 = getelementptr inbounds %struct.brcms_cm_info, %struct.brcms_cm_info* %8, i32 0, i32 0
  %10 = load %struct.brcms_c_info*, %struct.brcms_c_info** %9, align 8
  store %struct.brcms_c_info* %10, %struct.brcms_c_info** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @CHSPEC_CHANNEL(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @brcms_c_chspec_malformed(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %18 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %23 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @brcms_err(i32 %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  store i32 0, i32* %3, align 4
  br label %40

29:                                               ; preds = %2
  %30 = load %struct.brcms_cm_info*, %struct.brcms_cm_info** %4, align 8
  %31 = getelementptr inbounds %struct.brcms_cm_info, %struct.brcms_cm_info* %30, i32 0, i32 0
  %32 = load %struct.brcms_c_info*, %struct.brcms_c_info** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @CHANNEL_BANDUNIT(%struct.brcms_c_info* %32, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @chspec_bandunit(i32 %35)
  %37 = icmp ne i64 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %40

39:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %38, %16
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @CHSPEC_CHANNEL(i32) #1

declare dso_local i64 @brcms_c_chspec_malformed(i32) #1

declare dso_local i32 @brcms_err(i32, i8*, i32, i32) #1

declare dso_local i64 @CHANNEL_BANDUNIT(%struct.brcms_c_info*, i32) #1

declare dso_local i64 @chspec_bandunit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
