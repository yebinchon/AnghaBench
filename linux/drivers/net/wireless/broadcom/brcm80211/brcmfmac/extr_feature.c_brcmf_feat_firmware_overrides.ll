; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_feature.c_brcmf_feat_firmware_overrides.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_feature.c_brcmf_feat_firmware_overrides.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_feat_fwfeat = type { i32, i32 }
%struct.brcmf_pub = type { i32, i32 }

@brcmf_feat_fwfeat_map = common dso_local global %struct.brcmf_feat_fwfeat* null, align 8
@BRCMF_FEAT_LAST = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"enabling firmware feature: %s\0A\00", align 1
@brcmf_feat_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_pub*)* @brcmf_feat_firmware_overrides to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_feat_firmware_overrides(%struct.brcmf_pub* %0) #0 {
  %2 = alloca %struct.brcmf_pub*, align 8
  %3 = alloca %struct.brcmf_feat_fwfeat*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.brcmf_pub* %0, %struct.brcmf_pub** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %29, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.brcmf_feat_fwfeat*, %struct.brcmf_feat_fwfeat** @brcmf_feat_fwfeat_map, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.brcmf_feat_fwfeat* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %6
  %12 = load %struct.brcmf_feat_fwfeat*, %struct.brcmf_feat_fwfeat** @brcmf_feat_fwfeat_map, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.brcmf_feat_fwfeat, %struct.brcmf_feat_fwfeat* %12, i64 %14
  store %struct.brcmf_feat_fwfeat* %15, %struct.brcmf_feat_fwfeat** %3, align 8
  %16 = load %struct.brcmf_feat_fwfeat*, %struct.brcmf_feat_fwfeat** %3, align 8
  %17 = getelementptr inbounds %struct.brcmf_feat_fwfeat, %struct.brcmf_feat_fwfeat* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.brcmf_pub*, %struct.brcmf_pub** %2, align 8
  %20 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strcmp(i32 %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %11
  %25 = load %struct.brcmf_feat_fwfeat*, %struct.brcmf_feat_fwfeat** %3, align 8
  %26 = getelementptr inbounds %struct.brcmf_feat_fwfeat, %struct.brcmf_feat_fwfeat* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %4, align 4
  br label %32

28:                                               ; preds = %11
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %6

32:                                               ; preds = %24, %6
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  br label %65

36:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %56, %36
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @BRCMF_FEAT_LAST, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @BIT(i32 %43)
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load i32, i32* @INFO, align 4
  %49 = load i32*, i32** @brcmf_feat_names, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @brcmf_dbg(i32 %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %47, %41
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %37

59:                                               ; preds = %37
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.brcmf_pub*, %struct.brcmf_pub** %2, align 8
  %62 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %35
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.brcmf_feat_fwfeat*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
