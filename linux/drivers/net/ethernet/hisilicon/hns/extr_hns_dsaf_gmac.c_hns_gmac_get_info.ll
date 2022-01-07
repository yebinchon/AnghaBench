; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_gmac.c_hns_gmac_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_gmac.c_hns_gmac_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_info = type { i32, i32, i32, i8*, i8*, i32, i32, i32 }
%struct.hns_gmac_port_mode_cfg = type { i32, i64, i64, i32, i32 }

@GMAC_10M_MII = common dso_local global i32 0, align 4
@MAC_SPEED_10 = common dso_local global i32 0, align 4
@MAC_SPEED_100 = common dso_local global i32 0, align 4
@MAC_SPEED_1000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.mac_info*)* @hns_gmac_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_gmac_get_info(i8* %0, %struct.mac_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mac_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hns_gmac_port_mode_cfg, align 8
  store i8* %0, i8** %3, align 8
  store %struct.mac_info* %1, %struct.mac_info** %4, align 8
  %13 = getelementptr inbounds %struct.hns_gmac_port_mode_cfg, %struct.hns_gmac_port_mode_cfg* %12, i32 0, i32 0
  %14 = load i32, i32* @GMAC_10M_MII, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.hns_gmac_port_mode_cfg, %struct.hns_gmac_port_mode_cfg* %12, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.hns_gmac_port_mode_cfg, %struct.hns_gmac_port_mode_cfg* %12, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.hns_gmac_port_mode_cfg, %struct.hns_gmac_port_mode_cfg* %12, i32 0, i32 3
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.hns_gmac_port_mode_cfg, %struct.hns_gmac_port_mode_cfg* %12, i32 0, i32 4
  store i32 0, i32* %18, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @hns_gmac_port_mode_get(i8* %19, %struct.hns_gmac_port_mode_cfg* %12)
  %21 = getelementptr inbounds %struct.hns_gmac_port_mode_cfg, %struct.hns_gmac_port_mode_cfg* %12, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.hns_gmac_port_mode_cfg, %struct.hns_gmac_port_mode_cfg* %12, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %24, %2
  %29 = phi i1 [ false, %2 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = load %struct.mac_info*, %struct.mac_info** %4, align 8
  %32 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = getelementptr inbounds %struct.hns_gmac_port_mode_cfg, %struct.hns_gmac_port_mode_cfg* %12, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.mac_info*, %struct.mac_info** %4, align 8
  %36 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @hns_gmac_get_tx_auto_pause_frames(i8* %37, i32* %11)
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.mac_info*, %struct.mac_info** %4, align 8
  %41 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @hns_gmac_get_en(i8* %42, i8** %9, i8** %10)
  %44 = load i8*, i8** %9, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %28
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ne i8* %47, null
  br label %49

49:                                               ; preds = %46, %28
  %50 = phi i1 [ false, %28 ], [ %48, %46 ]
  %51 = zext i1 %50 to i32
  %52 = load %struct.mac_info*, %struct.mac_info** %4, align 8
  %53 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @hns_gmac_get_duplex_type(i8* %54, i32* %5)
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.mac_info*, %struct.mac_info** %4, align 8
  %58 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @hns_gmac_get_port_mode(i8* %59, i32* %6)
  %61 = load i32, i32* %6, align 4
  switch i32 %61, label %74 [
    i32 128, label %62
    i32 129, label %66
    i32 130, label %70
  ]

62:                                               ; preds = %49
  %63 = load i32, i32* @MAC_SPEED_10, align 4
  %64 = load %struct.mac_info*, %struct.mac_info** %4, align 8
  %65 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 8
  br label %77

66:                                               ; preds = %49
  %67 = load i32, i32* @MAC_SPEED_100, align 4
  %68 = load %struct.mac_info*, %struct.mac_info** %4, align 8
  %69 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 8
  br label %77

70:                                               ; preds = %49
  %71 = load i32, i32* @MAC_SPEED_1000, align 4
  %72 = load %struct.mac_info*, %struct.mac_info** %4, align 8
  %73 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 8
  br label %77

74:                                               ; preds = %49
  %75 = load %struct.mac_info*, %struct.mac_info** %4, align 8
  %76 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %75, i32 0, i32 5
  store i32 0, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %70, %66, %62
  %78 = load i8*, i8** %3, align 8
  %79 = call i32 @hns_gmac_get_pausefrm_cfg(i8* %78, i8** %7, i8** %8)
  %80 = load i8*, i8** %7, align 8
  %81 = load %struct.mac_info*, %struct.mac_info** %4, align 8
  %82 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %81, i32 0, i32 4
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = load %struct.mac_info*, %struct.mac_info** %4, align 8
  %85 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  ret void
}

declare dso_local i32 @hns_gmac_port_mode_get(i8*, %struct.hns_gmac_port_mode_cfg*) #1

declare dso_local i32 @hns_gmac_get_tx_auto_pause_frames(i8*, i32*) #1

declare dso_local i32 @hns_gmac_get_en(i8*, i8**, i8**) #1

declare dso_local i32 @hns_gmac_get_duplex_type(i8*, i32*) #1

declare dso_local i32 @hns_gmac_get_port_mode(i8*, i32*) #1

declare dso_local i32 @hns_gmac_get_pausefrm_cfg(i8*, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
