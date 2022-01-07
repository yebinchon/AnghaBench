; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_dump_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_dump_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_instance = type { i32, i32 }
%struct.emac_ethtool_regs_subhdr = type { i32, i32 }

@EMAC_FTR_EMAC4SYNC = common dso_local global i32 0, align 4
@EMAC4SYNC_ETHTOOL_REGS_VER = common dso_local global i32 0, align 4
@EMAC_FTR_EMAC4 = common dso_local global i32 0, align 4
@EMAC4_ETHTOOL_REGS_VER = common dso_local global i32 0, align 4
@EMAC_ETHTOOL_REGS_VER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.emac_instance*, i8*)* @emac_dump_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @emac_dump_regs(%struct.emac_instance* %0, i8* %1) #0 {
  %3 = alloca %struct.emac_instance*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.emac_ethtool_regs_subhdr*, align 8
  store %struct.emac_instance* %0, %struct.emac_instance** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.emac_ethtool_regs_subhdr*
  store %struct.emac_ethtool_regs_subhdr* %7, %struct.emac_ethtool_regs_subhdr** %5, align 8
  %8 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %9 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.emac_ethtool_regs_subhdr*, %struct.emac_ethtool_regs_subhdr** %5, align 8
  %12 = getelementptr inbounds %struct.emac_ethtool_regs_subhdr, %struct.emac_ethtool_regs_subhdr* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %14 = load i32, i32* @EMAC_FTR_EMAC4SYNC, align 4
  %15 = call i64 @emac_has_feature(%struct.emac_instance* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @EMAC4SYNC_ETHTOOL_REGS_VER, align 4
  %19 = load %struct.emac_ethtool_regs_subhdr*, %struct.emac_ethtool_regs_subhdr** %5, align 8
  %20 = getelementptr inbounds %struct.emac_ethtool_regs_subhdr, %struct.emac_ethtool_regs_subhdr* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %35

21:                                               ; preds = %2
  %22 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %23 = load i32, i32* @EMAC_FTR_EMAC4, align 4
  %24 = call i64 @emac_has_feature(%struct.emac_instance* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @EMAC4_ETHTOOL_REGS_VER, align 4
  %28 = load %struct.emac_ethtool_regs_subhdr*, %struct.emac_ethtool_regs_subhdr** %5, align 8
  %29 = getelementptr inbounds %struct.emac_ethtool_regs_subhdr, %struct.emac_ethtool_regs_subhdr* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %34

30:                                               ; preds = %21
  %31 = load i32, i32* @EMAC_ETHTOOL_REGS_VER, align 4
  %32 = load %struct.emac_ethtool_regs_subhdr*, %struct.emac_ethtool_regs_subhdr** %5, align 8
  %33 = getelementptr inbounds %struct.emac_ethtool_regs_subhdr, %struct.emac_ethtool_regs_subhdr* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %30, %26
  br label %35

35:                                               ; preds = %34, %17
  %36 = load %struct.emac_ethtool_regs_subhdr*, %struct.emac_ethtool_regs_subhdr** %5, align 8
  %37 = getelementptr inbounds %struct.emac_ethtool_regs_subhdr, %struct.emac_ethtool_regs_subhdr* %36, i64 1
  %38 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %39 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy_fromio(%struct.emac_ethtool_regs_subhdr* %37, i32 %40, i32 4)
  %42 = load %struct.emac_ethtool_regs_subhdr*, %struct.emac_ethtool_regs_subhdr** %5, align 8
  %43 = getelementptr inbounds %struct.emac_ethtool_regs_subhdr, %struct.emac_ethtool_regs_subhdr* %42, i64 1
  %44 = bitcast %struct.emac_ethtool_regs_subhdr* %43 to i8*
  %45 = getelementptr i8, i8* %44, i64 4
  ret i8* %45
}

declare dso_local i64 @emac_has_feature(%struct.emac_instance*, i32) #1

declare dso_local i32 @memcpy_fromio(%struct.emac_ethtool_regs_subhdr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
