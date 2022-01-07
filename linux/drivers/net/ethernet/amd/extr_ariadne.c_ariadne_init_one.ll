; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_ariadne.c_ariadne_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_ariadne.c_ariadne_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zorro_dev = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.zorro_device_id = type { i32 }
%struct.resource = type { i32 }
%struct.net_device = type { i32*, i64, i64, i32, i32, i32*, i32 }

@ARIADNE_LANCE = common dso_local global i64 0, align 8
@ARIADNE_RAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"Am79C960\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ARIADNE_RAM_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"RAM\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ariadne_netdev_ops = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Ariadne at 0x%08lx, Ethernet Address %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zorro_dev*, %struct.zorro_device_id*)* @ariadne_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ariadne_init_one(%struct.zorro_dev* %0, %struct.zorro_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zorro_dev*, align 8
  %5 = alloca %struct.zorro_device_id*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.zorro_dev* %0, %struct.zorro_dev** %4, align 8
  store %struct.zorro_device_id* %1, %struct.zorro_device_id** %5, align 8
  %14 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %15 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @ARIADNE_LANCE, align 8
  %20 = add i64 %18, %19
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @ARIADNE_RAM, align 8
  %23 = add i64 %21, %22
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call %struct.resource* @request_mem_region(i64 %24, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %25, %struct.resource** %9, align 8
  %26 = load %struct.resource*, %struct.resource** %9, align 8
  %27 = icmp ne %struct.resource* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %148

31:                                               ; preds = %2
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* @ARIADNE_RAM_SIZE, align 4
  %34 = call %struct.resource* @request_mem_region(i64 %32, i32 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %34, %struct.resource** %10, align 8
  %35 = load %struct.resource*, %struct.resource** %10, align 8
  %36 = icmp ne %struct.resource* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @release_mem_region(i64 %38, i32 4)
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %148

42:                                               ; preds = %31
  %43 = call %struct.net_device* @alloc_etherdev(i32 4)
  store %struct.net_device* %43, %struct.net_device** %11, align 8
  %44 = load %struct.net_device*, %struct.net_device** %11, align 8
  %45 = icmp eq %struct.net_device* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @release_mem_region(i64 %47, i32 4)
  %49 = load i64, i64* %8, align 8
  %50 = load i32, i32* @ARIADNE_RAM_SIZE, align 4
  %51 = call i32 @release_mem_region(i64 %49, i32 %50)
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %148

54:                                               ; preds = %42
  %55 = load %struct.net_device*, %struct.net_device** %11, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.resource*, %struct.resource** %9, align 8
  %59 = getelementptr inbounds %struct.resource, %struct.resource* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.net_device*, %struct.net_device** %11, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.resource*, %struct.resource** %10, align 8
  %64 = getelementptr inbounds %struct.resource, %struct.resource* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %66 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @be32_to_cpu(i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load %struct.net_device*, %struct.net_device** %11, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 0, i32* %73, align 4
  %74 = load %struct.net_device*, %struct.net_device** %11, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 96, i32* %77, align 4
  %78 = load %struct.net_device*, %struct.net_device** %11, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  store i32 48, i32* %81, align 4
  %82 = load i32, i32* %12, align 4
  %83 = ashr i32 %82, 16
  %84 = and i32 %83, 255
  %85 = load %struct.net_device*, %struct.net_device** %11, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  store i32 %84, i32* %88, align 4
  %89 = load i32, i32* %12, align 4
  %90 = ashr i32 %89, 8
  %91 = and i32 %90, 255
  %92 = load %struct.net_device*, %struct.net_device** %11, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 4
  store i32 %91, i32* %95, align 4
  %96 = load i32, i32* %12, align 4
  %97 = and i32 %96, 255
  %98 = load %struct.net_device*, %struct.net_device** %11, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 5
  store i32 %97, i32* %101, align 4
  %102 = load i64, i64* %7, align 8
  %103 = call i64 @ZTWO_VADDR(i64 %102)
  %104 = load %struct.net_device*, %struct.net_device** %11, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  %106 = load i64, i64* %8, align 8
  %107 = call i64 @ZTWO_VADDR(i64 %106)
  %108 = load %struct.net_device*, %struct.net_device** %11, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 2
  store i64 %107, i64* %109, align 8
  %110 = load %struct.net_device*, %struct.net_device** %11, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* @ARIADNE_RAM_SIZE, align 4
  %114 = sext i32 %113 to i64
  %115 = add i64 %112, %114
  %116 = trunc i64 %115 to i32
  %117 = load %struct.net_device*, %struct.net_device** %11, align 8
  %118 = getelementptr inbounds %struct.net_device, %struct.net_device* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 8
  %119 = load %struct.net_device*, %struct.net_device** %11, align 8
  %120 = getelementptr inbounds %struct.net_device, %struct.net_device* %119, i32 0, i32 5
  store i32* @ariadne_netdev_ops, i32** %120, align 8
  %121 = load i32, i32* @HZ, align 4
  %122 = mul nsw i32 5, %121
  %123 = load %struct.net_device*, %struct.net_device** %11, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 4
  %125 = load %struct.net_device*, %struct.net_device** %11, align 8
  %126 = call i32 @register_netdev(%struct.net_device* %125)
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %54
  %130 = load i64, i64* %7, align 8
  %131 = call i32 @release_mem_region(i64 %130, i32 4)
  %132 = load i64, i64* %8, align 8
  %133 = load i32, i32* @ARIADNE_RAM_SIZE, align 4
  %134 = call i32 @release_mem_region(i64 %132, i32 %133)
  %135 = load %struct.net_device*, %struct.net_device** %11, align 8
  %136 = call i32 @free_netdev(%struct.net_device* %135)
  %137 = load i32, i32* %13, align 4
  store i32 %137, i32* %3, align 4
  br label %148

138:                                              ; preds = %54
  %139 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %140 = load %struct.net_device*, %struct.net_device** %11, align 8
  %141 = call i32 @zorro_set_drvdata(%struct.zorro_dev* %139, %struct.net_device* %140)
  %142 = load %struct.net_device*, %struct.net_device** %11, align 8
  %143 = load i64, i64* %6, align 8
  %144 = load %struct.net_device*, %struct.net_device** %11, align 8
  %145 = getelementptr inbounds %struct.net_device, %struct.net_device* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @netdev_info(%struct.net_device* %142, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %143, i32* %146)
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %138, %129, %46, %37, %28
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.resource* @request_mem_region(i64, i32, i8*) #1

declare dso_local i32 @release_mem_region(i64, i32) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @ZTWO_VADDR(i64) #1

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
