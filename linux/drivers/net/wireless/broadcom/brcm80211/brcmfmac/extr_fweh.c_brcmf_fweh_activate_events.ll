; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_fweh.c_brcmf_fweh_activate_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_fweh.c_brcmf_fweh_activate_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@BRCMF_EVENTING_MASK_LEN = common dso_local global i32 0, align 4
@BRCMF_E_LAST = common dso_local global i32 0, align 4
@EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"enable event %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"enable event IF\0A\00", align 1
@BRCMF_E_IF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"event_msgs\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Set event_msgs error (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_fweh_activate_events(%struct.brcmf_if* %0) #0 {
  %2 = alloca %struct.brcmf_if*, align 8
  %3 = alloca %struct.brcmf_pub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.brcmf_if* %0, %struct.brcmf_if** %2, align 8
  %8 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %9 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %8, i32 0, i32 0
  %10 = load %struct.brcmf_pub*, %struct.brcmf_pub** %9, align 8
  store %struct.brcmf_pub* %10, %struct.brcmf_pub** %3, align 8
  %11 = load i32, i32* @BRCMF_EVENTING_MASK_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = mul nuw i64 4, %12
  %16 = trunc i64 %15 to i32
  %17 = call i32 @memset(i32* %14, i32 0, i32 %16)
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %42, %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @BRCMF_E_LAST, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %24 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %23, i32 0, i32 0
  %25 = load %struct.brcmf_pub*, %struct.brcmf_pub** %24, align 8
  %26 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %22
  %35 = load i32, i32* @EVENT, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @brcmf_fweh_event_name(i32 %36)
  %38 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @setbit(i32* %14, i32 %39)
  br label %41

41:                                               ; preds = %34, %22
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %18

45:                                               ; preds = %18
  %46 = load i32, i32* @EVENT, align 4
  %47 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @BRCMF_E_IF, align 4
  %49 = call i32 @setbit(i32* %14, i32 %48)
  %50 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %51 = load i32, i32* @BRCMF_EVENTING_MASK_LEN, align 4
  %52 = call i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %14, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @bphy_err(%struct.brcmf_pub* %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %55, %45
  %60 = load i32, i32* %5, align 4
  %61 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %61)
  ret i32 %60
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #2

declare dso_local i32 @brcmf_fweh_event_name(i32) #2

declare dso_local i32 @setbit(i32*, i32) #2

declare dso_local i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if*, i8*, i32*, i32) #2

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
