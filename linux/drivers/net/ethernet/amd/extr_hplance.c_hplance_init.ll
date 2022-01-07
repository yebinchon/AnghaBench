; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_hplance.c_hplance_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_hplance.c_hplance_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32*, i64, i32* }
%struct.dio_dev = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.hplance_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.lance_init_block*, i32 }
%struct.lance_init_block = type { i32 }

@DIO_VIRADDRBASE = common dso_local global i64 0, align 8
@DIO_IDOFF = common dso_local global i64 0, align 8
@hplance_netdev_ops = common dso_local global i32 0, align 4
@HPLANCE_NVRAMOFF = common dso_local global i64 0, align 8
@HPLANCE_MEMOFF = common dso_local global i64 0, align 8
@LE_C3_BSWP = common dso_local global i32 0, align 4
@hplance_writerap = common dso_local global i32 0, align 4
@hplance_writerdp = common dso_local global i32 0, align 4
@hplance_readrdp = common dso_local global i32 0, align 4
@LANCE_LOG_RX_BUFFERS = common dso_local global i32 0, align 4
@LANCE_LOG_TX_BUFFERS = common dso_local global i32 0, align 4
@RX_RING_MOD_MASK = common dso_local global i32 0, align 4
@TX_RING_MOD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.dio_dev*)* @hplance_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hplance_init(%struct.net_device* %0, %struct.dio_dev* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dio_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hplance_private*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.dio_dev* %1, %struct.dio_dev** %4, align 8
  %8 = load %struct.dio_dev*, %struct.dio_dev** %4, align 8
  %9 = getelementptr inbounds %struct.dio_dev, %struct.dio_dev* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DIO_VIRADDRBASE, align 8
  %13 = add i64 %11, %12
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @DIO_IDOFF, align 8
  %16 = add i64 %14, %15
  %17 = call i32 @out_8(i64 %16, i32 255)
  %18 = call i32 @udelay(i32 100)
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 3
  store i32* @hplance_netdev_ops, i32** %23, align 8
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %58, %2
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 6
  br i1 %28, label %29, label %61

29:                                               ; preds = %26
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @HPLANCE_NVRAMOFF, align 8
  %32 = add i64 %30, %31
  %33 = load i32, i32* %7, align 4
  %34 = mul nsw i32 %33, 4
  %35 = sext i32 %34 to i64
  %36 = add i64 %32, %35
  %37 = add i64 %36, 1
  %38 = call i32 @in_8(i64 %37)
  %39 = and i32 %38, 15
  %40 = shl i32 %39, 4
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @HPLANCE_NVRAMOFF, align 8
  %43 = add i64 %41, %42
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 %44, 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %43, %46
  %48 = add i64 %47, 3
  %49 = call i32 @in_8(i64 %48)
  %50 = and i32 %49, 15
  %51 = or i32 %40, %50
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %51, i32* %57, align 4
  br label %58

58:                                               ; preds = %29
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %26

61:                                               ; preds = %26
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = call %struct.hplance_private* @netdev_priv(%struct.net_device* %62)
  store %struct.hplance_private* %63, %struct.hplance_private** %6, align 8
  %64 = load %struct.dio_dev*, %struct.dio_dev** %4, align 8
  %65 = getelementptr inbounds %struct.dio_dev, %struct.dio_dev* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.hplance_private*, %struct.hplance_private** %6, align 8
  %68 = getelementptr inbounds %struct.hplance_private, %struct.hplance_private* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 12
  store i32 %66, i32* %69, align 8
  %70 = load i64, i64* %5, align 8
  %71 = load %struct.hplance_private*, %struct.hplance_private** %6, align 8
  %72 = getelementptr inbounds %struct.hplance_private, %struct.hplance_private* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* @HPLANCE_MEMOFF, align 8
  %76 = add i64 %74, %75
  %77 = inttoptr i64 %76 to %struct.lance_init_block*
  %78 = load %struct.hplance_private*, %struct.hplance_private** %6, align 8
  %79 = getelementptr inbounds %struct.hplance_private, %struct.hplance_private* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 11
  store %struct.lance_init_block* %77, %struct.lance_init_block** %80, align 8
  %81 = load %struct.hplance_private*, %struct.hplance_private** %6, align 8
  %82 = getelementptr inbounds %struct.hplance_private, %struct.hplance_private* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 10
  store i32* null, i32** %83, align 8
  %84 = load i32, i32* @LE_C3_BSWP, align 4
  %85 = load %struct.hplance_private*, %struct.hplance_private** %6, align 8
  %86 = getelementptr inbounds %struct.hplance_private, %struct.hplance_private* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 9
  store i32 %84, i32* %87, align 8
  %88 = load %struct.dio_dev*, %struct.dio_dev** %4, align 8
  %89 = getelementptr inbounds %struct.dio_dev, %struct.dio_dev* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.hplance_private*, %struct.hplance_private** %6, align 8
  %92 = getelementptr inbounds %struct.hplance_private, %struct.hplance_private* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 8
  store i32 %90, i32* %93, align 4
  %94 = load i32, i32* @hplance_writerap, align 4
  %95 = load %struct.hplance_private*, %struct.hplance_private** %6, align 8
  %96 = getelementptr inbounds %struct.hplance_private, %struct.hplance_private* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 7
  store i32 %94, i32* %97, align 8
  %98 = load i32, i32* @hplance_writerdp, align 4
  %99 = load %struct.hplance_private*, %struct.hplance_private** %6, align 8
  %100 = getelementptr inbounds %struct.hplance_private, %struct.hplance_private* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 6
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* @hplance_readrdp, align 4
  %103 = load %struct.hplance_private*, %struct.hplance_private** %6, align 8
  %104 = getelementptr inbounds %struct.hplance_private, %struct.hplance_private* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 5
  store i32 %102, i32* %105, align 8
  %106 = load i32, i32* @LANCE_LOG_RX_BUFFERS, align 4
  %107 = load %struct.hplance_private*, %struct.hplance_private** %6, align 8
  %108 = getelementptr inbounds %struct.hplance_private, %struct.hplance_private* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 4
  store i32 %106, i32* %109, align 4
  %110 = load i32, i32* @LANCE_LOG_TX_BUFFERS, align 4
  %111 = load %struct.hplance_private*, %struct.hplance_private** %6, align 8
  %112 = getelementptr inbounds %struct.hplance_private, %struct.hplance_private* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 3
  store i32 %110, i32* %113, align 8
  %114 = load i32, i32* @RX_RING_MOD_MASK, align 4
  %115 = load %struct.hplance_private*, %struct.hplance_private** %6, align 8
  %116 = getelementptr inbounds %struct.hplance_private, %struct.hplance_private* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  store i32 %114, i32* %117, align 4
  %118 = load i32, i32* @TX_RING_MOD_MASK, align 4
  %119 = load %struct.hplance_private*, %struct.hplance_private** %6, align 8
  %120 = getelementptr inbounds %struct.hplance_private, %struct.hplance_private* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 8
  ret void
}

declare dso_local i32 @out_8(i64, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @in_8(i64) #1

declare dso_local %struct.hplance_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
