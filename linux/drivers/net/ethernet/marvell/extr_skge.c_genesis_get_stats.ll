; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_genesis_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_genesis_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.skge_port = type { i32, %struct.skge_hw* }
%struct.skge_hw = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@XM_STAT_CMD = common dso_local global i32 0, align 4
@XM_SC_SNP_TXC = common dso_local global i32 0, align 4
@XM_SC_SNP_RXC = common dso_local global i32 0, align 4
@XM_TXO_OK_HI = common dso_local global i32 0, align 4
@XM_TXO_OK_LO = common dso_local global i32 0, align 4
@XM_RXO_OK_HI = common dso_local global i32 0, align 4
@XM_RXO_OK_LO = common dso_local global i32 0, align 4
@skge_stats = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_port*, i32*)* @genesis_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @genesis_get_stats(%struct.skge_port* %0, i32* %1) #0 {
  %3 = alloca %struct.skge_port*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.skge_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.skge_port* %0, %struct.skge_port** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %10 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %9, i32 0, i32 1
  %11 = load %struct.skge_hw*, %struct.skge_hw** %10, align 8
  store %struct.skge_hw* %11, %struct.skge_hw** %5, align 8
  %12 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %13 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load i64, i64* @jiffies, align 8
  %16 = load i64, i64* @HZ, align 8
  %17 = add i64 %15, %16
  store i64 %17, i64* %8, align 8
  %18 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @XM_STAT_CMD, align 4
  %21 = load i32, i32* @XM_SC_SNP_TXC, align 4
  %22 = load i32, i32* @XM_SC_SNP_RXC, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @xm_write16(%struct.skge_hw* %18, i32 %19, i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %41, %2
  %26 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @XM_STAT_CMD, align 4
  %29 = call i32 @xm_read16(%struct.skge_hw* %26, i32 %27, i32 %28)
  %30 = load i32, i32* @XM_SC_SNP_TXC, align 4
  %31 = load i32, i32* @XM_SC_SNP_RXC, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %25
  %36 = load i64, i64* @jiffies, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @time_after(i64 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %43

41:                                               ; preds = %35
  %42 = call i32 @udelay(i32 10)
  br label %25

43:                                               ; preds = %40, %25
  %44 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @XM_TXO_OK_HI, align 4
  %47 = call i32 @xm_read32(%struct.skge_hw* %44, i32 %45, i32 %46)
  %48 = shl i32 %47, 32
  %49 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @XM_TXO_OK_LO, align 4
  %52 = call i32 @xm_read32(%struct.skge_hw* %49, i32 %50, i32 %51)
  %53 = or i32 %48, %52
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @XM_RXO_OK_HI, align 4
  %59 = call i32 @xm_read32(%struct.skge_hw* %56, i32 %57, i32 %58)
  %60 = shl i32 %59, 32
  %61 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @XM_RXO_OK_LO, align 4
  %64 = call i32 @xm_read32(%struct.skge_hw* %61, i32 %62, i32 %63)
  %65 = or i32 %60, %64
  %66 = load i32*, i32** %4, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 %65, i32* %67, align 4
  store i32 2, i32* %7, align 4
  br label %68

68:                                               ; preds = %87, %43
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @skge_stats, align 8
  %71 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %70)
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %68
  %74 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** @skge_stats, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @xm_read32(%struct.skge_hw* %74, i32 %75, i32 %81)
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  br label %87

87:                                               ; preds = %73
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %68

90:                                               ; preds = %68
  ret void
}

declare dso_local i32 @xm_write16(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @xm_read16(%struct.skge_hw*, i32, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @xm_read32(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
