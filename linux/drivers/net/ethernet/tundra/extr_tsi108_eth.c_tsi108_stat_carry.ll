; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tundra/extr_tsi108_eth.c_tsi108_stat_carry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tundra/extr_tsi108_eth.c_tsi108_stat_carry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tsi108_prv_data = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TSI108_STAT_CARRY1 = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY2 = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXBYTES = common dso_local global i32 0, align 4
@TSI108_STAT_RXBYTES_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXPKTS = common dso_local global i32 0, align 4
@TSI108_STAT_RXPKTS_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXFCS = common dso_local global i32 0, align 4
@TSI108_STAT_RXFCS_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXMCAST = common dso_local global i32 0, align 4
@TSI108_STAT_RXMCAST_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXALIGN = common dso_local global i32 0, align 4
@TSI108_STAT_RXALIGN_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXLENGTH = common dso_local global i32 0, align 4
@TSI108_STAT_RXLENGTH_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXRUNT = common dso_local global i32 0, align 4
@TSI108_STAT_RXRUNT_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXJUMBO = common dso_local global i32 0, align 4
@TSI108_STAT_RXJUMBO_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXFRAG = common dso_local global i32 0, align 4
@TSI108_STAT_RXFRAG_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXJABBER = common dso_local global i32 0, align 4
@TSI108_STAT_RXJABBER_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXDROP = common dso_local global i32 0, align 4
@TSI108_STAT_RXDROP_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY2_TXBYTES = common dso_local global i32 0, align 4
@TSI108_STAT_TXBYTES_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY2_TXPKTS = common dso_local global i32 0, align 4
@TSI108_STAT_TXPKTS_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY2_TXEXDEF = common dso_local global i32 0, align 4
@TSI108_STAT_TXEXDEF_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY2_TXEXCOL = common dso_local global i32 0, align 4
@TSI108_STAT_TXEXCOL_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY2_TXTCOL = common dso_local global i32 0, align 4
@TSI108_STAT_TXTCOL_CARRY = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY2_TXPAUSE = common dso_local global i32 0, align 4
@TSI108_STAT_TXPAUSEDROP_CARRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tsi108_stat_carry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsi108_stat_carry(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tsi108_prv_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.tsi108_prv_data* @netdev_priv(%struct.net_device* %7)
  store %struct.tsi108_prv_data* %8, %struct.tsi108_prv_data** %3, align 8
  %9 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %10 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %9, i32 0, i32 0
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load i32, i32* @TSI108_STAT_CARRY1, align 4
  %14 = call i32 @TSI_READ(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @TSI108_STAT_CARRY2, align 4
  %16 = call i32 @TSI_READ(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @TSI108_STAT_CARRY1, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @TSI_WRITE(i32 %17, i32 %18)
  %20 = load i32, i32* @TSI108_STAT_CARRY2, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @TSI_WRITE(i32 %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @TSI108_STAT_CARRY1_RXBYTES, align 4
  %25 = load i32, i32* @TSI108_STAT_RXBYTES_CARRY, align 4
  %26 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %27 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 9
  %29 = call i32 @tsi108_stat_carry_one(i32 %23, i32 %24, i32 %25, i32* %28)
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @TSI108_STAT_CARRY1_RXPKTS, align 4
  %32 = load i32, i32* @TSI108_STAT_RXPKTS_CARRY, align 4
  %33 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %34 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 8
  %36 = call i32 @tsi108_stat_carry_one(i32 %30, i32 %31, i32 %32, i32* %35)
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @TSI108_STAT_CARRY1_RXFCS, align 4
  %39 = load i32, i32* @TSI108_STAT_RXFCS_CARRY, align 4
  %40 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %41 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %40, i32 0, i32 8
  %42 = call i32 @tsi108_stat_carry_one(i32 %37, i32 %38, i32 %39, i32* %41)
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @TSI108_STAT_CARRY1_RXMCAST, align 4
  %45 = load i32, i32* @TSI108_STAT_RXMCAST_CARRY, align 4
  %46 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %47 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 7
  %49 = call i32 @tsi108_stat_carry_one(i32 %43, i32 %44, i32 %45, i32* %48)
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @TSI108_STAT_CARRY1_RXALIGN, align 4
  %52 = load i32, i32* @TSI108_STAT_RXALIGN_CARRY, align 4
  %53 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %54 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 6
  %56 = call i32 @tsi108_stat_carry_one(i32 %50, i32 %51, i32 %52, i32* %55)
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @TSI108_STAT_CARRY1_RXLENGTH, align 4
  %59 = load i32, i32* @TSI108_STAT_RXLENGTH_CARRY, align 4
  %60 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %61 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 5
  %63 = call i32 @tsi108_stat_carry_one(i32 %57, i32 %58, i32 %59, i32* %62)
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @TSI108_STAT_CARRY1_RXRUNT, align 4
  %66 = load i32, i32* @TSI108_STAT_RXRUNT_CARRY, align 4
  %67 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %68 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %67, i32 0, i32 7
  %69 = call i32 @tsi108_stat_carry_one(i32 %64, i32 %65, i32 %66, i32* %68)
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @TSI108_STAT_CARRY1_RXJUMBO, align 4
  %72 = load i32, i32* @TSI108_STAT_RXJUMBO_CARRY, align 4
  %73 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %74 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %73, i32 0, i32 6
  %75 = call i32 @tsi108_stat_carry_one(i32 %70, i32 %71, i32 %72, i32* %74)
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @TSI108_STAT_CARRY1_RXFRAG, align 4
  %78 = load i32, i32* @TSI108_STAT_RXFRAG_CARRY, align 4
  %79 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %80 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %79, i32 0, i32 5
  %81 = call i32 @tsi108_stat_carry_one(i32 %76, i32 %77, i32 %78, i32* %80)
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @TSI108_STAT_CARRY1_RXJABBER, align 4
  %84 = load i32, i32* @TSI108_STAT_RXJABBER_CARRY, align 4
  %85 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %86 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %85, i32 0, i32 4
  %87 = call i32 @tsi108_stat_carry_one(i32 %82, i32 %83, i32 %84, i32* %86)
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @TSI108_STAT_CARRY1_RXDROP, align 4
  %90 = load i32, i32* @TSI108_STAT_RXDROP_CARRY, align 4
  %91 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %92 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 4
  %94 = call i32 @tsi108_stat_carry_one(i32 %88, i32 %89, i32 %90, i32* %93)
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @TSI108_STAT_CARRY2_TXBYTES, align 4
  %97 = load i32, i32* @TSI108_STAT_TXBYTES_CARRY, align 4
  %98 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %99 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  %101 = call i32 @tsi108_stat_carry_one(i32 %95, i32 %96, i32 %97, i32* %100)
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @TSI108_STAT_CARRY2_TXPKTS, align 4
  %104 = load i32, i32* @TSI108_STAT_TXPKTS_CARRY, align 4
  %105 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %106 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  %108 = call i32 @tsi108_stat_carry_one(i32 %102, i32 %103, i32 %104, i32* %107)
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @TSI108_STAT_CARRY2_TXEXDEF, align 4
  %111 = load i32, i32* @TSI108_STAT_TXEXDEF_CARRY, align 4
  %112 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %113 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = call i32 @tsi108_stat_carry_one(i32 %109, i32 %110, i32 %111, i32* %114)
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @TSI108_STAT_CARRY2_TXEXCOL, align 4
  %118 = load i32, i32* @TSI108_STAT_TXEXCOL_CARRY, align 4
  %119 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %120 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %119, i32 0, i32 3
  %121 = call i32 @tsi108_stat_carry_one(i32 %116, i32 %117, i32 %118, i32* %120)
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @TSI108_STAT_CARRY2_TXTCOL, align 4
  %124 = load i32, i32* @TSI108_STAT_TXTCOL_CARRY, align 4
  %125 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %126 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = call i32 @tsi108_stat_carry_one(i32 %122, i32 %123, i32 %124, i32* %127)
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @TSI108_STAT_CARRY2_TXPAUSE, align 4
  %131 = load i32, i32* @TSI108_STAT_TXPAUSEDROP_CARRY, align 4
  %132 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %133 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %132, i32 0, i32 1
  %134 = call i32 @tsi108_stat_carry_one(i32 %129, i32 %130, i32 %131, i32* %133)
  %135 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %136 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %135, i32 0, i32 0
  %137 = load i64, i64* %4, align 8
  %138 = call i32 @spin_unlock_irqrestore(i32* %136, i64 %137)
  ret void
}

declare dso_local %struct.tsi108_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @TSI_READ(i32) #1

declare dso_local i32 @TSI_WRITE(i32, i32) #1

declare dso_local i32 @tsi108_stat_carry_one(i32, i32, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
