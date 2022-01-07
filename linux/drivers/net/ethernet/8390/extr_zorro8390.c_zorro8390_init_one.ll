; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_zorro8390.c_zorro8390_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_zorro8390.c_zorro8390_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.zorro_dev = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.zorro_device_id = type { i32 }
%struct.net_device = type { i32 }

@cards = common dso_local global %struct.TYPE_5__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NE_IO_EXTENT = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zorro_dev*, %struct.zorro_device_id*)* @zorro8390_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zorro8390_init_one(%struct.zorro_dev* %0, %struct.zorro_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zorro_dev*, align 8
  %5 = alloca %struct.zorro_device_id*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.zorro_dev* %0, %struct.zorro_dev** %4, align 8
  store %struct.zorro_device_id* %1, %struct.zorro_device_id** %5, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cards, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %11)
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %10, align 4
  br label %14

14:                                               ; preds = %30, %2
  %15 = load i32, i32* %10, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  %18 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %19 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cards, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %20, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %33

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %10, align 4
  br label %14

33:                                               ; preds = %28, %14
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %96

39:                                               ; preds = %33
  %40 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %41 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cards, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %44, %50
  store i64 %51, i64* %8, align 8
  %52 = call %struct.net_device* @____alloc_ei_netdev(i32 0)
  store %struct.net_device* %52, %struct.net_device** %6, align 8
  %53 = load %struct.net_device*, %struct.net_device** %6, align 8
  %54 = icmp ne %struct.net_device* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %39
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %96

58:                                               ; preds = %39
  %59 = load i64, i64* %8, align 8
  %60 = load i32, i32* @NE_IO_EXTENT, align 4
  %61 = mul nsw i32 %60, 2
  %62 = load i32, i32* @DRV_NAME, align 4
  %63 = call i32 @request_mem_region(i64 %59, i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %58
  %66 = load %struct.net_device*, %struct.net_device** %6, align 8
  %67 = call i32 @free_netdev(%struct.net_device* %66)
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %96

70:                                               ; preds = %58
  %71 = load %struct.net_device*, %struct.net_device** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cards, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @ZTWO_VADDR(i64 %79)
  %81 = call i32 @zorro8390_init(%struct.net_device* %71, i64 %72, i32 %78, i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %70
  %85 = load i64, i64* %8, align 8
  %86 = load i32, i32* @NE_IO_EXTENT, align 4
  %87 = mul nsw i32 %86, 2
  %88 = call i32 @release_mem_region(i64 %85, i32 %87)
  %89 = load %struct.net_device*, %struct.net_device** %6, align 8
  %90 = call i32 @free_netdev(%struct.net_device* %89)
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %3, align 4
  br label %96

92:                                               ; preds = %70
  %93 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %94 = load %struct.net_device*, %struct.net_device** %6, align 8
  %95 = call i32 @zorro_set_drvdata(%struct.zorro_dev* %93, %struct.net_device* %94)
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %92, %84, %65, %55, %36
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local %struct.net_device* @____alloc_ei_netdev(i32) #1

declare dso_local i32 @request_mem_region(i64, i32, i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @zorro8390_init(%struct.net_device*, i64, i32, i32) #1

declare dso_local i32 @ZTWO_VADDR(i64) #1

declare dso_local i32 @release_mem_region(i64, i32) #1

declare dso_local i32 @zorro_set_drvdata(%struct.zorro_dev*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
