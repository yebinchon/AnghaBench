; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_mdio.c_axienet_mdio_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_mdio.c_axienet_mdio_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axienet_local = type { i32, i64 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not find CPU device node.\0A\00", align 1
@DEFAULT_HOST_CLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"CPU clock-frequency property not found.\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Setting assumed host clock to %u\0A\00", align 1
@MAX_MDIO_FREQ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"Setting MDIO clock divisor to %u/%u Hz host clock.\0A\00", align 1
@XAE_MDIO_MC_OFFSET = common dso_local global i32 0, align 4
@XAE_MDIO_MC_MDIOEN_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @axienet_mdio_enable(%struct.axienet_local* %0) #0 {
  %2 = alloca %struct.axienet_local*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.axienet_local* %0, %struct.axienet_local** %2, align 8
  %7 = load %struct.axienet_local*, %struct.axienet_local** %2, align 8
  %8 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.axienet_local*, %struct.axienet_local** %2, align 8
  %13 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @clk_get_rate(i64 %14)
  store i32 %15, i32* %4, align 4
  br label %46

16:                                               ; preds = %1
  %17 = call %struct.device_node* @of_find_node_by_name(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %17, %struct.device_node** %5, align 8
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = load %struct.axienet_local*, %struct.axienet_local** %2, align 8
  %22 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @netdev_warn(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @DEFAULT_HOST_CLOCK, align 4
  store i32 %25, i32* %4, align 4
  br label %40

26:                                               ; preds = %16
  %27 = load %struct.device_node*, %struct.device_node** %5, align 8
  %28 = call i32 @of_property_read_u32(%struct.device_node* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %4)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.axienet_local*, %struct.axienet_local** %2, align 8
  %33 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @netdev_warn(i32 %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32, i32* @DEFAULT_HOST_CLOCK, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %31, %26
  %38 = load %struct.device_node*, %struct.device_node** %5, align 8
  %39 = call i32 @of_node_put(%struct.device_node* %38)
  br label %40

40:                                               ; preds = %37, %20
  %41 = load %struct.axienet_local*, %struct.axienet_local** %2, align 8
  %42 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @netdev_info(i32 %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %40, %11
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @MAX_MDIO_FREQ, align 4
  %49 = mul nsw i32 %48, 2
  %50 = sdiv i32 %47, %49
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @MAX_MDIO_FREQ, align 4
  %54 = mul nsw i32 %53, 2
  %55 = srem i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %57, %46
  %61 = load %struct.axienet_local*, %struct.axienet_local** %2, align 8
  %62 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @netdev_dbg(i32 %63, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load %struct.axienet_local*, %struct.axienet_local** %2, align 8
  %68 = load i32, i32* @XAE_MDIO_MC_OFFSET, align 4
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @XAE_MDIO_MC_MDIOEN_MASK, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @axienet_iow(%struct.axienet_local* %67, i32 %68, i32 %71)
  %73 = load %struct.axienet_local*, %struct.axienet_local** %2, align 8
  %74 = call i32 @axienet_mdio_wait_until_ready(%struct.axienet_local* %73)
  ret i32 %74
}

declare dso_local i32 @clk_get_rate(i64) #1

declare dso_local %struct.device_node* @of_find_node_by_name(i32*, i8*) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @netdev_info(i32, i8*, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @axienet_iow(%struct.axienet_local*, i32, i32) #1

declare dso_local i32 @axienet_mdio_wait_until_ready(%struct.axienet_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
