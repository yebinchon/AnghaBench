; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_a2065.c_a2065_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_a2065.c_a2065_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zorro_dev = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.zorro_device_id = type { i32 }
%struct.net_device = type { i32*, i64, i64, i32, i32, i64, i32*, i32 }
%struct.lance_private = type { i32, %struct.net_device*, i32, i32, i32, i32, i32, i64, %struct.lance_init_block*, %struct.lance_init_block*, %struct.lance_regs* }
%struct.lance_init_block = type { i32 }
%struct.lance_regs = type { i32 }
%struct.resource = type { i32 }

@A2065_LANCE = common dso_local global i64 0, align 8
@A2065_RAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"Am7990\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@A2065_RAM_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"RAM\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ZORRO_PROD_AMERISTAR_A2065 = common dso_local global i64 0, align 8
@LE_C3_BSWP = common dso_local global i32 0, align 4
@LANCE_LOG_RX_BUFFERS = common dso_local global i32 0, align 4
@LANCE_LOG_TX_BUFFERS = common dso_local global i32 0, align 4
@RX_RING_MOD_MASK = common dso_local global i32 0, align 4
@TX_RING_MOD_MASK = common dso_local global i32 0, align 4
@lance_netdev_ops = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@lance_set_multicast_retry = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"A2065 at 0x%08lx, Ethernet Address %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zorro_dev*, %struct.zorro_device_id*)* @a2065_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a2065_init_one(%struct.zorro_dev* %0, %struct.zorro_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zorro_dev*, align 8
  %5 = alloca %struct.zorro_device_id*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.lance_private*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.zorro_dev* %0, %struct.zorro_dev** %4, align 8
  store %struct.zorro_device_id* %1, %struct.zorro_device_id** %5, align 8
  %15 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %16 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @A2065_LANCE, align 8
  %21 = add i64 %19, %20
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @A2065_RAM, align 8
  %24 = add i64 %22, %23
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call %struct.resource* @request_mem_region(i64 %25, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %26, %struct.resource** %11, align 8
  %27 = load %struct.resource*, %struct.resource** %11, align 8
  %28 = icmp ne %struct.resource* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %209

32:                                               ; preds = %2
  %33 = load i64, i64* %10, align 8
  %34 = load i32, i32* @A2065_RAM_SIZE, align 4
  %35 = call %struct.resource* @request_mem_region(i64 %33, i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %35, %struct.resource** %12, align 8
  %36 = load %struct.resource*, %struct.resource** %12, align 8
  %37 = icmp ne %struct.resource* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @release_mem_region(i64 %39, i32 4)
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %209

43:                                               ; preds = %32
  %44 = call %struct.net_device* @alloc_etherdev(i32 72)
  store %struct.net_device* %44, %struct.net_device** %6, align 8
  %45 = load %struct.net_device*, %struct.net_device** %6, align 8
  %46 = icmp eq %struct.net_device* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @release_mem_region(i64 %48, i32 4)
  %50 = load i64, i64* %10, align 8
  %51 = load i32, i32* @A2065_RAM_SIZE, align 4
  %52 = call i32 @release_mem_region(i64 %50, i32 %51)
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %209

55:                                               ; preds = %43
  %56 = load %struct.net_device*, %struct.net_device** %6, align 8
  %57 = call %struct.lance_private* @netdev_priv(%struct.net_device* %56)
  store %struct.lance_private* %57, %struct.lance_private** %7, align 8
  %58 = load %struct.net_device*, %struct.net_device** %6, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.resource*, %struct.resource** %11, align 8
  %62 = getelementptr inbounds %struct.resource, %struct.resource* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.net_device*, %struct.net_device** %6, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.resource*, %struct.resource** %12, align 8
  %67 = getelementptr inbounds %struct.resource, %struct.resource* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %69 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @be32_to_cpu(i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load %struct.net_device*, %struct.net_device** %6, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 0, i32* %76, align 4
  %77 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %78 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ZORRO_PROD_AMERISTAR_A2065, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %55
  %83 = load %struct.net_device*, %struct.net_device** %6, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  store i32 128, i32* %86, align 4
  %87 = load %struct.net_device*, %struct.net_device** %6, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  store i32 16, i32* %90, align 4
  br label %100

91:                                               ; preds = %55
  %92 = load %struct.net_device*, %struct.net_device** %6, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 0, i32* %95, align 4
  %96 = load %struct.net_device*, %struct.net_device** %6, align 8
  %97 = getelementptr inbounds %struct.net_device, %struct.net_device* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  store i32 159, i32* %99, align 4
  br label %100

100:                                              ; preds = %91, %82
  %101 = load i32, i32* %13, align 4
  %102 = ashr i32 %101, 16
  %103 = and i32 %102, 255
  %104 = load %struct.net_device*, %struct.net_device** %6, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 3
  store i32 %103, i32* %107, align 4
  %108 = load i32, i32* %13, align 4
  %109 = ashr i32 %108, 8
  %110 = and i32 %109, 255
  %111 = load %struct.net_device*, %struct.net_device** %6, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 4
  store i32 %110, i32* %114, align 4
  %115 = load i32, i32* %13, align 4
  %116 = and i32 %115, 255
  %117 = load %struct.net_device*, %struct.net_device** %6, align 8
  %118 = getelementptr inbounds %struct.net_device, %struct.net_device* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 5
  store i32 %116, i32* %120, align 4
  %121 = load i64, i64* %9, align 8
  %122 = call i64 @ZTWO_VADDR(i64 %121)
  %123 = load %struct.net_device*, %struct.net_device** %6, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 1
  store i64 %122, i64* %124, align 8
  %125 = load i64, i64* %10, align 8
  %126 = call i64 @ZTWO_VADDR(i64 %125)
  %127 = load %struct.net_device*, %struct.net_device** %6, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 2
  store i64 %126, i64* %128, align 8
  %129 = load %struct.net_device*, %struct.net_device** %6, align 8
  %130 = getelementptr inbounds %struct.net_device, %struct.net_device* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* @A2065_RAM_SIZE, align 4
  %133 = sext i32 %132 to i64
  %134 = add i64 %131, %133
  %135 = trunc i64 %134 to i32
  %136 = load %struct.net_device*, %struct.net_device** %6, align 8
  %137 = getelementptr inbounds %struct.net_device, %struct.net_device* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 8
  %138 = load %struct.net_device*, %struct.net_device** %6, align 8
  %139 = getelementptr inbounds %struct.net_device, %struct.net_device* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = inttoptr i64 %140 to %struct.lance_regs*
  %142 = load %struct.lance_private*, %struct.lance_private** %7, align 8
  %143 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %142, i32 0, i32 10
  store %struct.lance_regs* %141, %struct.lance_regs** %143, align 8
  %144 = load %struct.net_device*, %struct.net_device** %6, align 8
  %145 = getelementptr inbounds %struct.net_device, %struct.net_device* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = inttoptr i64 %146 to %struct.lance_init_block*
  %148 = load %struct.lance_private*, %struct.lance_private** %7, align 8
  %149 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %148, i32 0, i32 9
  store %struct.lance_init_block* %147, %struct.lance_init_block** %149, align 8
  %150 = load i64, i64* @A2065_RAM, align 8
  %151 = inttoptr i64 %150 to %struct.lance_init_block*
  %152 = load %struct.lance_private*, %struct.lance_private** %7, align 8
  %153 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %152, i32 0, i32 8
  store %struct.lance_init_block* %151, %struct.lance_init_block** %153, align 8
  %154 = load %struct.lance_private*, %struct.lance_private** %7, align 8
  %155 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %154, i32 0, i32 7
  store i64 0, i64* %155, align 8
  %156 = load i32, i32* @LE_C3_BSWP, align 4
  %157 = load %struct.lance_private*, %struct.lance_private** %7, align 8
  %158 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %157, i32 0, i32 6
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* @LANCE_LOG_RX_BUFFERS, align 4
  %160 = load %struct.lance_private*, %struct.lance_private** %7, align 8
  %161 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %160, i32 0, i32 5
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* @LANCE_LOG_TX_BUFFERS, align 4
  %163 = load %struct.lance_private*, %struct.lance_private** %7, align 8
  %164 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %163, i32 0, i32 4
  store i32 %162, i32* %164, align 8
  %165 = load i32, i32* @RX_RING_MOD_MASK, align 4
  %166 = load %struct.lance_private*, %struct.lance_private** %7, align 8
  %167 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* @TX_RING_MOD_MASK, align 4
  %169 = load %struct.lance_private*, %struct.lance_private** %7, align 8
  %170 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 8
  %171 = load %struct.net_device*, %struct.net_device** %6, align 8
  %172 = load %struct.lance_private*, %struct.lance_private** %7, align 8
  %173 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %172, i32 0, i32 1
  store %struct.net_device* %171, %struct.net_device** %173, align 8
  %174 = load %struct.net_device*, %struct.net_device** %6, align 8
  %175 = getelementptr inbounds %struct.net_device, %struct.net_device* %174, i32 0, i32 6
  store i32* @lance_netdev_ops, i32** %175, align 8
  %176 = load i32, i32* @HZ, align 4
  %177 = mul nsw i32 5, %176
  %178 = load %struct.net_device*, %struct.net_device** %6, align 8
  %179 = getelementptr inbounds %struct.net_device, %struct.net_device* %178, i32 0, i32 4
  store i32 %177, i32* %179, align 4
  %180 = load %struct.net_device*, %struct.net_device** %6, align 8
  %181 = getelementptr inbounds %struct.net_device, %struct.net_device* %180, i32 0, i32 5
  store i64 0, i64* %181, align 8
  %182 = load %struct.lance_private*, %struct.lance_private** %7, align 8
  %183 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %182, i32 0, i32 0
  %184 = load i32, i32* @lance_set_multicast_retry, align 4
  %185 = call i32 @timer_setup(i32* %183, i32 %184, i32 0)
  %186 = load %struct.net_device*, %struct.net_device** %6, align 8
  %187 = call i32 @register_netdev(%struct.net_device* %186)
  store i32 %187, i32* %14, align 4
  %188 = load i32, i32* %14, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %100
  %191 = load i64, i64* %9, align 8
  %192 = call i32 @release_mem_region(i64 %191, i32 4)
  %193 = load i64, i64* %10, align 8
  %194 = load i32, i32* @A2065_RAM_SIZE, align 4
  %195 = call i32 @release_mem_region(i64 %193, i32 %194)
  %196 = load %struct.net_device*, %struct.net_device** %6, align 8
  %197 = call i32 @free_netdev(%struct.net_device* %196)
  %198 = load i32, i32* %14, align 4
  store i32 %198, i32* %3, align 4
  br label %209

199:                                              ; preds = %100
  %200 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %201 = load %struct.net_device*, %struct.net_device** %6, align 8
  %202 = call i32 @zorro_set_drvdata(%struct.zorro_dev* %200, %struct.net_device* %201)
  %203 = load %struct.net_device*, %struct.net_device** %6, align 8
  %204 = load i64, i64* %8, align 8
  %205 = load %struct.net_device*, %struct.net_device** %6, align 8
  %206 = getelementptr inbounds %struct.net_device, %struct.net_device* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = call i32 @netdev_info(%struct.net_device* %203, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %204, i32* %207)
  store i32 0, i32* %3, align 4
  br label %209

209:                                              ; preds = %199, %190, %47, %38, %29
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local %struct.resource* @request_mem_region(i64, i32, i8*) #1

declare dso_local i32 @release_mem_region(i64, i32) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.lance_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @ZTWO_VADDR(i64) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @zorro_set_drvdata(%struct.zorro_dev*, %struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
