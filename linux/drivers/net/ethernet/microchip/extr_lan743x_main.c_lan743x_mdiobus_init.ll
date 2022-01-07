; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_mdiobus_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_mdiobus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { %struct.TYPE_7__*, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i8*, i32, i32, i32, i32, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@lan743x_mdiobus_read = common dso_local global i32 0, align 4
@lan743x_mdiobus_write = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"lan743x-mdiobus\00", align 1
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"pci-%s\00", align 1
@ID_REV_ID_MASK_ = common dso_local global i32 0, align 4
@ID_REV_ID_LAN7430_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan743x_adapter*)* @lan743x_mdiobus_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_mdiobus_init(%struct.lan743x_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lan743x_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %3, align 8
  %5 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %5, i32 0, i32 2
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = call %struct.TYPE_7__* @devm_mdiobus_alloc(i32* %8)
  %10 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %10, i32 0, i32 0
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %11, align 8
  %12 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %76

19:                                               ; preds = %1
  %20 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %21 = bitcast %struct.lan743x_adapter* %20 to i8*
  %22 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 5
  store i8* %21, i8** %25, align 8
  %26 = load i32, i32* @lan743x_mdiobus_read, align 4
  %27 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 4
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* @lan743x_mdiobus_write, align 4
  %32 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  store i32 %31, i32* %35, align 8
  %36 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %39, align 8
  %40 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %46 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %46, i32 0, i32 2
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = call i8* @pci_name(%struct.TYPE_6__* %48)
  %50 = call i32 @snprintf(i32 %44, i32 %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @ID_REV_ID_MASK_, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @ID_REV_ID_LAN7430_, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %19
  %60 = call i64 @BIT(i32 1)
  %61 = trunc i64 %60 to i32
  %62 = xor i32 %61, -1
  %63 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %64 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store i32 %62, i32* %66, align 8
  br label %67

67:                                               ; preds = %59, %19
  %68 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %69 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = call i32 @mdiobus_register(%struct.TYPE_7__* %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %76

75:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %78

76:                                               ; preds = %74, %16
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %75
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.TYPE_7__* @devm_mdiobus_alloc(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @pci_name(%struct.TYPE_6__*) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @mdiobus_register(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
