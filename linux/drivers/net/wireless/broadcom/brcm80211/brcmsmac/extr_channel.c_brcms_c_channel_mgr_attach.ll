; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_channel.c_brcms_c_channel_mgr_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_channel.c_brcms_c_channel_mgr_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_cm_info = type { %struct.TYPE_12__*, %struct.brcms_c_info*, %struct.brcms_pub* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8* }
%struct.brcms_pub = type { i32 }
%struct.brcms_c_info = type { i32, i32, %struct.brcms_pub*, %struct.brcms_cm_info*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.ssb_sprom }
%struct.ssb_sprom = type { i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@BRCM_CNTRY_BUF_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.brcms_cm_info* @brcms_c_channel_mgr_attach(%struct.brcms_c_info* %0) #0 {
  %2 = alloca %struct.brcms_cm_info*, align 8
  %3 = alloca %struct.brcms_c_info*, align 8
  %4 = alloca %struct.brcms_cm_info*, align 8
  %5 = alloca %struct.brcms_pub*, align 8
  %6 = alloca %struct.ssb_sprom*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %3, align 8
  %9 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %10 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %9, i32 0, i32 2
  %11 = load %struct.brcms_pub*, %struct.brcms_pub** %10, align 8
  store %struct.brcms_pub* %11, %struct.brcms_pub** %5, align 8
  %12 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %13 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %12, i32 0, i32 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store %struct.ssb_sprom* %19, %struct.ssb_sprom** %6, align 8
  %20 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %21 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %7, align 8
  store i32 8, i32* %8, align 4
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call %struct.brcms_cm_info* @kzalloc(i32 24, i32 %23)
  store %struct.brcms_cm_info* %24, %struct.brcms_cm_info** %4, align 8
  %25 = load %struct.brcms_cm_info*, %struct.brcms_cm_info** %4, align 8
  %26 = icmp eq %struct.brcms_cm_info* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store %struct.brcms_cm_info* null, %struct.brcms_cm_info** %2, align 8
  br label %92

28:                                               ; preds = %1
  %29 = load %struct.brcms_pub*, %struct.brcms_pub** %5, align 8
  %30 = load %struct.brcms_cm_info*, %struct.brcms_cm_info** %4, align 8
  %31 = getelementptr inbounds %struct.brcms_cm_info, %struct.brcms_cm_info* %30, i32 0, i32 2
  store %struct.brcms_pub* %29, %struct.brcms_pub** %31, align 8
  %32 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %33 = load %struct.brcms_cm_info*, %struct.brcms_cm_info** %4, align 8
  %34 = getelementptr inbounds %struct.brcms_cm_info, %struct.brcms_cm_info* %33, i32 0, i32 1
  store %struct.brcms_c_info* %32, %struct.brcms_c_info** %34, align 8
  %35 = load %struct.brcms_cm_info*, %struct.brcms_cm_info** %4, align 8
  %36 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %37 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %36, i32 0, i32 3
  store %struct.brcms_cm_info* %35, %struct.brcms_cm_info** %37, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call %struct.TYPE_12__* @brcms_world_regd(i8* %38, i32 %39)
  %41 = load %struct.brcms_cm_info*, %struct.brcms_cm_info** %4, align 8
  %42 = getelementptr inbounds %struct.brcms_cm_info, %struct.brcms_cm_info* %41, i32 0, i32 0
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %42, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i64 @brcms_c_country_valid(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %28
  %47 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %48 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %47, i32 0, i32 2
  %49 = load %struct.brcms_pub*, %struct.brcms_pub** %48, align 8
  %50 = getelementptr inbounds %struct.brcms_pub, %struct.brcms_pub* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @strncpy(i32 %51, i8* %52, i32 %53)
  br label %55

55:                                               ; preds = %46, %28
  %56 = load %struct.brcms_cm_info*, %struct.brcms_cm_info** %4, align 8
  %57 = getelementptr inbounds %struct.brcms_cm_info, %struct.brcms_cm_info* %56, i32 0, i32 0
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = icmp ne %struct.TYPE_12__* %58, null
  br i1 %59, label %73, label %60

60:                                               ; preds = %55
  %61 = call %struct.TYPE_12__* (...) @brcms_default_world_regd()
  %62 = load %struct.brcms_cm_info*, %struct.brcms_cm_info** %4, align 8
  %63 = getelementptr inbounds %struct.brcms_cm_info, %struct.brcms_cm_info* %62, i32 0, i32 0
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %63, align 8
  %64 = load %struct.brcms_cm_info*, %struct.brcms_cm_info** %4, align 8
  %65 = getelementptr inbounds %struct.brcms_cm_info, %struct.brcms_cm_info* %64, i32 0, i32 0
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %7, align 8
  %71 = load i32, i32* @BRCM_CNTRY_BUF_SZ, align 4
  %72 = sub nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %60, %55
  %74 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %75 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @strncpy(i32 %76, i8* %77, i32 %78)
  %80 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %81 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @strncpy(i32 %82, i8* %83, i32 %84)
  %86 = load %struct.brcms_cm_info*, %struct.brcms_cm_info** %4, align 8
  %87 = load %struct.brcms_cm_info*, %struct.brcms_cm_info** %4, align 8
  %88 = getelementptr inbounds %struct.brcms_cm_info, %struct.brcms_cm_info* %87, i32 0, i32 0
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = call i32 @brcms_c_set_country(%struct.brcms_cm_info* %86, %struct.TYPE_12__* %89)
  %91 = load %struct.brcms_cm_info*, %struct.brcms_cm_info** %4, align 8
  store %struct.brcms_cm_info* %91, %struct.brcms_cm_info** %2, align 8
  br label %92

92:                                               ; preds = %73, %27
  %93 = load %struct.brcms_cm_info*, %struct.brcms_cm_info** %2, align 8
  ret %struct.brcms_cm_info* %93
}

declare dso_local %struct.brcms_cm_info* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_12__* @brcms_world_regd(i8*, i32) #1

declare dso_local i64 @brcms_c_country_valid(i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local %struct.TYPE_12__* @brcms_default_world_regd(...) #1

declare dso_local i32 @brcms_c_set_country(%struct.brcms_cm_info*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
