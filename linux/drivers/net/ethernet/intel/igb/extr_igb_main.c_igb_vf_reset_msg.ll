; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_vf_reset_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_vf_reset_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { %struct.TYPE_2__*, %struct.e1000_hw }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.e1000_hw = type { i32 }

@E1000_VFTE = common dso_local global i32 0, align 4
@E1000_VFRE = common dso_local global i32 0, align 4
@IGB_VF_FLAG_CTS = common dso_local global i32 0, align 4
@E1000_VF_RESET = common dso_local global i64 0, align 8
@E1000_VT_MSGTYPE_ACK = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@E1000_VT_MSGTYPE_NACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*, i64)* @igb_vf_reset_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_vf_reset_msg(%struct.igb_adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [3 x i64], align 16
  %9 = alloca i32*, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %10, i32 0, i32 1
  store %struct.e1000_hw* %11, %struct.e1000_hw** %5, align 8
  %12 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %6, align 8
  %19 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32* %20, i32** %9, align 8
  %21 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @igb_vf_reset(%struct.igb_adapter* %21, i64 %22)
  %24 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @igb_set_vf_mac(%struct.igb_adapter* %24, i64 %25, i8* %26)
  %28 = load i32, i32* @E1000_VFTE, align 4
  %29 = call i64 @rd32(i32 %28)
  store i64 %29, i64* %7, align 8
  %30 = load i32, i32* @E1000_VFTE, align 4
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @BIT(i64 %32)
  %34 = or i64 %31, %33
  %35 = call i32 @wr32(i32 %30, i64 %34)
  %36 = load i32, i32* @E1000_VFRE, align 4
  %37 = call i64 @rd32(i32 %36)
  store i64 %37, i64* %7, align 8
  %38 = load i32, i32* @E1000_VFRE, align 4
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call i64 @BIT(i64 %40)
  %42 = or i64 %39, %41
  %43 = call i32 @wr32(i32 %38, i64 %42)
  %44 = load i32, i32* @IGB_VF_FLAG_CTS, align 4
  %45 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %44
  store i32 %52, i32* %50, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @is_zero_ether_addr(i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %2
  %57 = load i64, i64* @E1000_VF_RESET, align 8
  %58 = load i64, i64* @E1000_VT_MSGTYPE_ACK, align 8
  %59 = or i64 %57, %58
  %60 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  store i64 %59, i64* %60, align 16
  %61 = load i32*, i32** %9, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* @ETH_ALEN, align 4
  %64 = call i32 @memcpy(i32* %61, i8* %62, i32 %63)
  br label %70

65:                                               ; preds = %2
  %66 = load i64, i64* @E1000_VF_RESET, align 8
  %67 = load i64, i64* @E1000_VT_MSGTYPE_NACK, align 8
  %68 = or i64 %66, %67
  %69 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  store i64 %68, i64* %69, align 16
  br label %70

70:                                               ; preds = %65, %56
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %72 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %73 = load i64, i64* %4, align 8
  %74 = call i32 @igb_write_mbx(%struct.e1000_hw* %71, i64* %72, i32 3, i64 %73)
  ret void
}

declare dso_local i32 @igb_vf_reset(%struct.igb_adapter*, i64) #1

declare dso_local i32 @igb_set_vf_mac(%struct.igb_adapter*, i64, i8*) #1

declare dso_local i64 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i64) #1

declare dso_local i64 @BIT(i64) #1

declare dso_local i32 @is_zero_ether_addr(i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @igb_write_mbx(%struct.e1000_hw*, i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
