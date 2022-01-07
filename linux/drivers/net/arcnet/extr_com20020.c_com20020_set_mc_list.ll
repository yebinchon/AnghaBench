; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_com20020.c_com20020_set_mc_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_com20020.c_com20020_set_mc_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.arcnet_local = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@PROMISCset = common dso_local global i32 0, align 4
@D_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Setting promiscuous flag...\0A\00", align 1
@SUB_SETUP1 = common dso_local global i32 0, align 4
@COM20020_REG_W_XREG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Resetting promiscuous flag...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @com20020_set_mc_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @com20020_set_mc_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.arcnet_local*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %5)
  store %struct.arcnet_local* %6, %struct.arcnet_local** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IFF_PROMISC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IFF_UP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %16
  %24 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %25 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PROMISCset, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @D_NORMAL, align 4
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = call i32 @arc_printk(i32 %31, %struct.net_device* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %30, %23
  %35 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @SUB_SETUP1, align 4
  %38 = call i32 @com20020_set_subaddress(%struct.arcnet_local* %35, i32 %36, i32 %37)
  %39 = load i32, i32* @PROMISCset, align 4
  %40 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %41 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %45 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @COM20020_REG_W_XREG, align 4
  %49 = call i32 @arcnet_outb(i32 %46, i32 %47, i32 %48)
  br label %78

50:                                               ; preds = %16, %1
  %51 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %52 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PROMISCset, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32, i32* @D_NORMAL, align 4
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = call i32 @arc_printk(i32 %58, %struct.net_device* %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %57, %50
  %62 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @SUB_SETUP1, align 4
  %65 = call i32 @com20020_set_subaddress(%struct.arcnet_local* %62, i32 %63, i32 %64)
  %66 = load i32, i32* @PROMISCset, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %69 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %73 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @COM20020_REG_W_XREG, align 4
  %77 = call i32 @arcnet_outb(i32 %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %61, %34
  ret void
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @arc_printk(i32, %struct.net_device*, i8*) #1

declare dso_local i32 @com20020_set_subaddress(%struct.arcnet_local*, i32, i32) #1

declare dso_local i32 @arcnet_outb(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
