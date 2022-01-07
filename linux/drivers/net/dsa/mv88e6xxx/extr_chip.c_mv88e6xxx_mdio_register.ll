; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_mdio_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_mdio_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32, i32 }
%struct.device_node = type { i8* }
%struct.mv88e6xxx_mdio_bus = type { i32, i32, %struct.mv88e6xxx_chip*, %struct.mii_bus* }
%struct.mii_bus = type { i8*, i32, i32, i32, i32, %struct.mv88e6xxx_mdio_bus* }

@mv88e6xxx_mdio_register.index = internal global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%pOF\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"mv88e6xxx SMI\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"mv88e6xxx-%d\00", align 1
@mv88e6xxx_mdio_read = common dso_local global i32 0, align 4
@mv88e6xxx_mdio_write = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Cannot register MDIO bus (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, %struct.device_node*, i32)* @mv88e6xxx_mdio_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_mdio_register(%struct.mv88e6xxx_chip* %0, %struct.device_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv88e6xxx_chip*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mv88e6xxx_mdio_bus*, align 8
  %9 = alloca %struct.mii_bus*, align 8
  %10 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %3
  %14 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %15 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %14)
  %16 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %17 = call i32 @mv88e6xxx_g2_scratch_gpio_set_smi(%struct.mv88e6xxx_chip* %16, i32 1)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %19 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %18)
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %132

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24, %3
  %26 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %27 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.mii_bus* @devm_mdiobus_alloc_size(i32 %28, i32 24)
  store %struct.mii_bus* %29, %struct.mii_bus** %9, align 8
  %30 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %31 = icmp ne %struct.mii_bus* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %132

35:                                               ; preds = %25
  %36 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %37 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %36, i32 0, i32 5
  %38 = load %struct.mv88e6xxx_mdio_bus*, %struct.mv88e6xxx_mdio_bus** %37, align 8
  store %struct.mv88e6xxx_mdio_bus* %38, %struct.mv88e6xxx_mdio_bus** %8, align 8
  %39 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %40 = load %struct.mv88e6xxx_mdio_bus*, %struct.mv88e6xxx_mdio_bus** %8, align 8
  %41 = getelementptr inbounds %struct.mv88e6xxx_mdio_bus, %struct.mv88e6xxx_mdio_bus* %40, i32 0, i32 3
  store %struct.mii_bus* %39, %struct.mii_bus** %41, align 8
  %42 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %43 = load %struct.mv88e6xxx_mdio_bus*, %struct.mv88e6xxx_mdio_bus** %8, align 8
  %44 = getelementptr inbounds %struct.mv88e6xxx_mdio_bus, %struct.mv88e6xxx_mdio_bus* %43, i32 0, i32 2
  store %struct.mv88e6xxx_chip* %42, %struct.mv88e6xxx_chip** %44, align 8
  %45 = load %struct.mv88e6xxx_mdio_bus*, %struct.mv88e6xxx_mdio_bus** %8, align 8
  %46 = getelementptr inbounds %struct.mv88e6xxx_mdio_bus, %struct.mv88e6xxx_mdio_bus* %45, i32 0, i32 1
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.mv88e6xxx_mdio_bus*, %struct.mv88e6xxx_mdio_bus** %8, align 8
  %50 = getelementptr inbounds %struct.mv88e6xxx_mdio_bus, %struct.mv88e6xxx_mdio_bus* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.device_node*, %struct.device_node** %6, align 8
  %52 = icmp ne %struct.device_node* %51, null
  br i1 %52, label %53, label %65

53:                                               ; preds = %35
  %54 = load %struct.device_node*, %struct.device_node** %6, align 8
  %55 = getelementptr inbounds %struct.device_node, %struct.device_node* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %58 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %60 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %63 = load %struct.device_node*, %struct.device_node** %6, align 8
  %64 = call i32 @snprintf(i32 %61, i32 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.device_node* %63)
  br label %77

65:                                               ; preds = %35
  %66 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %67 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %66, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %67, align 8
  %68 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %69 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %72 = load i32, i32* @mv88e6xxx_mdio_register.index, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @mv88e6xxx_mdio_register.index, align 4
  %74 = sext i32 %72 to i64
  %75 = inttoptr i64 %74 to %struct.device_node*
  %76 = call i32 @snprintf(i32 %70, i32 %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %75)
  br label %77

77:                                               ; preds = %65, %53
  %78 = load i32, i32* @mv88e6xxx_mdio_read, align 4
  %79 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %80 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @mv88e6xxx_mdio_write, align 4
  %82 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %83 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %85 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %88 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %77
  %92 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %93 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %94 = call i32 @mv88e6xxx_g2_irq_mdio_setup(%struct.mv88e6xxx_chip* %92, %struct.mii_bus* %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %4, align 4
  br label %132

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99, %77
  %101 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %102 = load %struct.device_node*, %struct.device_node** %6, align 8
  %103 = call i32 @of_mdiobus_register(%struct.mii_bus* %101, %struct.device_node* %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %100
  %107 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %108 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @dev_err(i32 %109, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  %112 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %113 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %114 = call i32 @mv88e6xxx_g2_irq_mdio_free(%struct.mv88e6xxx_chip* %112, %struct.mii_bus* %113)
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %4, align 4
  br label %132

116:                                              ; preds = %100
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load %struct.mv88e6xxx_mdio_bus*, %struct.mv88e6xxx_mdio_bus** %8, align 8
  %121 = getelementptr inbounds %struct.mv88e6xxx_mdio_bus, %struct.mv88e6xxx_mdio_bus* %120, i32 0, i32 1
  %122 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %123 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %122, i32 0, i32 0
  %124 = call i32 @list_add_tail(i32* %121, i32* %123)
  br label %131

125:                                              ; preds = %116
  %126 = load %struct.mv88e6xxx_mdio_bus*, %struct.mv88e6xxx_mdio_bus** %8, align 8
  %127 = getelementptr inbounds %struct.mv88e6xxx_mdio_bus, %struct.mv88e6xxx_mdio_bus* %126, i32 0, i32 1
  %128 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %129 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %128, i32 0, i32 0
  %130 = call i32 @list_add(i32* %127, i32* %129)
  br label %131

131:                                              ; preds = %125, %119
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %131, %106, %97, %32, %22
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_g2_scratch_gpio_set_smi(%struct.mv88e6xxx_chip*, i32) #1

declare dso_local i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip*) #1

declare dso_local %struct.mii_bus* @devm_mdiobus_alloc_size(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, %struct.device_node*) #1

declare dso_local i32 @mv88e6xxx_g2_irq_mdio_setup(%struct.mv88e6xxx_chip*, %struct.mii_bus*) #1

declare dso_local i32 @of_mdiobus_register(%struct.mii_bus*, %struct.device_node*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mv88e6xxx_g2_irq_mdio_free(%struct.mv88e6xxx_chip*, %struct.mii_bus*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
