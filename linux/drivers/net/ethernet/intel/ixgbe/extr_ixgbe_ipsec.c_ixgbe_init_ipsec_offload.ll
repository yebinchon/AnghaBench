; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ipsec.c_ixgbe_init_ipsec_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ipsec.c_ixgbe_init_ipsec_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.TYPE_4__*, %struct.ixgbe_ipsec*, %struct.ixgbe_hw }
%struct.TYPE_4__ = type { i32* }
%struct.ixgbe_ipsec = type { %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec*, i64, i64, i32 }
%struct.ixgbe_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_SECTXSTAT = common dso_local global i32 0, align 4
@IXGBE_SECTXSTAT_SECTX_OFF_DIS = common dso_local global i32 0, align 4
@IXGBE_SECRXSTAT = common dso_local global i32 0, align 4
@IXGBE_SECRXSTAT_SECRX_OFF_DIS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IXGBE_IPSEC_MAX_SA_COUNT = common dso_local global i32 0, align 4
@IXGBE_IPSEC_MAX_RX_IP_COUNT = common dso_local global i32 0, align 4
@ixgbe_xfrmdev_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unable to allocate memory for SA tables\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_init_ipsec_offload(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.ixgbe_ipsec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %8 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %8, i32 0, i32 2
  store %struct.ixgbe_hw* %9, %struct.ixgbe_hw** %3, align 8
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %126

17:                                               ; preds = %1
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %19 = load i32, i32* @IXGBE_SECTXSTAT, align 4
  %20 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %18, i32 %19)
  %21 = load i32, i32* @IXGBE_SECTXSTAT_SECTX_OFF_DIS, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %5, align 4
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %24 = load i32, i32* @IXGBE_SECRXSTAT, align 4
  %25 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %23, i32 %24)
  %26 = load i32, i32* @IXGBE_SECRXSTAT_SECRX_OFF_DIS, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %17
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %17
  br label %126

34:                                               ; preds = %30
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kzalloc(i64 48, i32 %35)
  %37 = bitcast i8* %36 to %struct.ixgbe_ipsec*
  store %struct.ixgbe_ipsec* %37, %struct.ixgbe_ipsec** %4, align 8
  %38 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %4, align 8
  %39 = icmp ne %struct.ixgbe_ipsec* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %121

41:                                               ; preds = %34
  %42 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %4, align 8
  %43 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @hash_init(i32 %44)
  %46 = load i32, i32* @IXGBE_IPSEC_MAX_SA_COUNT, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 4, %47
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @kzalloc(i64 %49, i32 %50)
  %52 = bitcast i8* %51 to %struct.ixgbe_ipsec*
  %53 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %4, align 8
  %54 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %53, i32 0, i32 1
  store %struct.ixgbe_ipsec* %52, %struct.ixgbe_ipsec** %54, align 8
  %55 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %4, align 8
  %56 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %55, i32 0, i32 1
  %57 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %56, align 8
  %58 = icmp ne %struct.ixgbe_ipsec* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %41
  br label %106

60:                                               ; preds = %41
  %61 = load i32, i32* @IXGBE_IPSEC_MAX_SA_COUNT, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 4, %62
  store i64 %63, i64* %7, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i8* @kzalloc(i64 %64, i32 %65)
  %67 = bitcast i8* %66 to %struct.ixgbe_ipsec*
  %68 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %4, align 8
  %69 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %68, i32 0, i32 0
  store %struct.ixgbe_ipsec* %67, %struct.ixgbe_ipsec** %69, align 8
  %70 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %4, align 8
  %71 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %70, i32 0, i32 0
  %72 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %71, align 8
  %73 = icmp ne %struct.ixgbe_ipsec* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %60
  br label %106

75:                                               ; preds = %60
  %76 = load i32, i32* @IXGBE_IPSEC_MAX_RX_IP_COUNT, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 4, %77
  store i64 %78, i64* %7, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i8* @kzalloc(i64 %79, i32 %80)
  %82 = bitcast i8* %81 to %struct.ixgbe_ipsec*
  %83 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %4, align 8
  %84 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %83, i32 0, i32 2
  store %struct.ixgbe_ipsec* %82, %struct.ixgbe_ipsec** %84, align 8
  %85 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %4, align 8
  %86 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %85, i32 0, i32 2
  %87 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %86, align 8
  %88 = icmp ne %struct.ixgbe_ipsec* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %75
  br label %106

90:                                               ; preds = %75
  %91 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %4, align 8
  %92 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %91, i32 0, i32 4
  store i64 0, i64* %92, align 8
  %93 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %4, align 8
  %94 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %93, i32 0, i32 3
  store i64 0, i64* %94, align 8
  %95 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %4, align 8
  %96 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %97 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %96, i32 0, i32 1
  store %struct.ixgbe_ipsec* %95, %struct.ixgbe_ipsec** %97, align 8
  %98 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %99 = call i32 @ixgbe_ipsec_stop_engine(%struct.ixgbe_adapter* %98)
  %100 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %101 = call i32 @ixgbe_ipsec_clear_hw_tables(%struct.ixgbe_adapter* %100)
  %102 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %103 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i32* @ixgbe_xfrmdev_ops, i32** %105, align 8
  br label %126

106:                                              ; preds = %89, %74, %59
  %107 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %4, align 8
  %108 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %107, i32 0, i32 2
  %109 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %108, align 8
  %110 = call i32 @kfree(%struct.ixgbe_ipsec* %109)
  %111 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %4, align 8
  %112 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %111, i32 0, i32 1
  %113 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %112, align 8
  %114 = call i32 @kfree(%struct.ixgbe_ipsec* %113)
  %115 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %4, align 8
  %116 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %115, i32 0, i32 0
  %117 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %116, align 8
  %118 = call i32 @kfree(%struct.ixgbe_ipsec* %117)
  %119 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %4, align 8
  %120 = call i32 @kfree(%struct.ixgbe_ipsec* %119)
  br label %121

121:                                              ; preds = %106, %40
  %122 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %123 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = call i32 @netdev_err(%struct.TYPE_4__* %124, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %126

126:                                              ; preds = %121, %90, %33, %16
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @hash_init(i32) #1

declare dso_local i32 @ixgbe_ipsec_stop_engine(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_ipsec_clear_hw_tables(%struct.ixgbe_adapter*) #1

declare dso_local i32 @kfree(%struct.ixgbe_ipsec*) #1

declare dso_local i32 @netdev_err(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
