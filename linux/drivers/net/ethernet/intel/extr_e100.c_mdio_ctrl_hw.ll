; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_mdio_ctrl_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_mdio_ctrl_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@mdi_ready = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"e100.mdio_ctrl won't go Ready\0A\00", align 1
@hw = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"%s:addr=%d, reg=%d, data_in=0x%04X, data_out=0x%04X\0A\00", align 1
@mdi_read = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nic*, i32, i32, i32, i32)* @mdio_ctrl_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdio_ctrl_hw(%struct.nic* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nic*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.nic* %0, %struct.nic** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.nic*, %struct.nic** %7, align 8
  %16 = getelementptr inbounds %struct.nic, %struct.nic* %15, i32 0, i32 1
  %17 = load i64, i64* %14, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  store i32 100, i32* %13, align 4
  br label %19

19:                                               ; preds = %34, %5
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load %struct.nic*, %struct.nic** %7, align 8
  %24 = getelementptr inbounds %struct.nic, %struct.nic* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @ioread32(i32* %26)
  %28 = load i32, i32* @mdi_ready, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %37

32:                                               ; preds = %22
  %33 = call i32 @udelay(i32 20)
  br label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %13, align 4
  %36 = add i32 %35, -1
  store i32 %36, i32* %13, align 4
  br label %19

37:                                               ; preds = %31, %19
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = load %struct.nic*, %struct.nic** %7, align 8
  %46 = getelementptr inbounds %struct.nic, %struct.nic* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @netdev_err(i32 %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.nic*, %struct.nic** %7, align 8
  %50 = getelementptr inbounds %struct.nic, %struct.nic* %49, i32 0, i32 1
  %51 = load i64, i64* %14, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  store i32 0, i32* %6, align 4
  br label %108

53:                                               ; preds = %37
  %54 = load i32, i32* %10, align 4
  %55 = shl i32 %54, 16
  %56 = load i32, i32* %8, align 4
  %57 = shl i32 %56, 21
  %58 = or i32 %55, %57
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %11, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.nic*, %struct.nic** %7, align 8
  %64 = getelementptr inbounds %struct.nic, %struct.nic* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @iowrite32(i32 %62, i32* %66)
  store i32 0, i32* %13, align 4
  br label %68

68:                                               ; preds = %83, %53
  %69 = load i32, i32* %13, align 4
  %70 = icmp ult i32 %69, 100
  br i1 %70, label %71, label %86

71:                                               ; preds = %68
  %72 = call i32 @udelay(i32 20)
  %73 = load %struct.nic*, %struct.nic** %7, align 8
  %74 = getelementptr inbounds %struct.nic, %struct.nic* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @ioread32(i32* %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* @mdi_ready, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %86

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %13, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %68

86:                                               ; preds = %81, %68
  %87 = load %struct.nic*, %struct.nic** %7, align 8
  %88 = getelementptr inbounds %struct.nic, %struct.nic* %87, i32 0, i32 1
  %89 = load i64, i64* %14, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  %91 = load %struct.nic*, %struct.nic** %7, align 8
  %92 = load i32, i32* @hw, align 4
  %93 = load i32, i32* @KERN_DEBUG, align 4
  %94 = load %struct.nic*, %struct.nic** %7, align 8
  %95 = getelementptr inbounds %struct.nic, %struct.nic* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @mdi_read, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @netif_printk(%struct.nic* %91, i32 %92, i32 %93, i32 %96, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %101, i32 %102, i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %86, %44
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @netif_printk(%struct.nic*, i32, i32, i32, i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
