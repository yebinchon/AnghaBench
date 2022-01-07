; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, %struct.ixgbe_hw, i32 }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.1*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_FLAG_FDIR_HASH_CAPABLE = common dso_local global i32 0, align 4
@IXGBE_FLAG_FDIR_PERFECT_CAPABLE = common dso_local global i32 0, align 4
@IXGBE_FLAG_DCA_CAPABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_configure(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %4 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %4, i32 0, i32 2
  store %struct.ixgbe_hw* %5, %struct.ixgbe_hw** %3, align 8
  %6 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %7 = call i32 @ixgbe_configure_pb(%struct.ixgbe_adapter* %6)
  %8 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %9 = call i32 @ixgbe_configure_virtualization(%struct.ixgbe_adapter* %8)
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @ixgbe_set_rx_mode(i32 %12)
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %15 = call i32 @ixgbe_restore_vlan(%struct.ixgbe_adapter* %14)
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %17 = call i32 @ixgbe_ipsec_restore(%struct.ixgbe_adapter* %16)
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %19 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %31 [
    i32 129, label %22
    i32 128, label %22
  ]

22:                                               ; preds = %1, %1
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %24 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %26, align 8
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %29 = bitcast %struct.ixgbe_hw* %28 to %struct.ixgbe_hw.1*
  %30 = call i32 %27(%struct.ixgbe_hw.1* %29)
  br label %32

31:                                               ; preds = %1
  br label %32

32:                                               ; preds = %31, %22
  %33 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @IXGBE_FLAG_FDIR_HASH_CAPABLE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %41 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %40, i32 0, i32 2
  %42 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ixgbe_init_fdir_signature_82599(%struct.ixgbe_hw* %41, i32 %44)
  br label %63

46:                                               ; preds = %32
  %47 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %48 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IXGBE_FLAG_FDIR_PERFECT_CAPABLE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %55 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %54, i32 0, i32 2
  %56 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %57 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ixgbe_init_fdir_perfect_82599(%struct.ixgbe_hw* %55, i32 %58)
  %60 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %61 = call i32 @ixgbe_fdir_filter_restore(%struct.ixgbe_adapter* %60)
  br label %62

62:                                               ; preds = %53, %46
  br label %63

63:                                               ; preds = %62, %39
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %65 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %77 [
    i32 129, label %68
    i32 128, label %68
  ]

68:                                               ; preds = %63, %63
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %70 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %72, align 8
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %75 = bitcast %struct.ixgbe_hw* %74 to %struct.ixgbe_hw.0*
  %76 = call i32 %73(%struct.ixgbe_hw.0* %75)
  br label %78

77:                                               ; preds = %63
  br label %78

78:                                               ; preds = %77, %68
  %79 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %80 = call i32 @ixgbe_configure_tx(%struct.ixgbe_adapter* %79)
  %81 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %82 = call i32 @ixgbe_configure_rx(%struct.ixgbe_adapter* %81)
  %83 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %84 = call i32 @ixgbe_configure_dfwd(%struct.ixgbe_adapter* %83)
  ret void
}

declare dso_local i32 @ixgbe_configure_pb(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_configure_virtualization(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_set_rx_mode(i32) #1

declare dso_local i32 @ixgbe_restore_vlan(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_ipsec_restore(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_init_fdir_signature_82599(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_init_fdir_perfect_82599(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_fdir_filter_restore(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_configure_tx(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_configure_rx(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_configure_dfwd(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
