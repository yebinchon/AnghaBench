; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_realtek-smi-core.c_realtek_smi_setup_mdio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_realtek-smi-core.c_realtek_smi_setup_mdio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.realtek_smi = type { %struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i8*, i32, %struct.TYPE_10__*, %struct.TYPE_7__, i32, i32, %struct.realtek_smi* }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }

@.str = private unnamed_addr constant [17 x i8] c"realtek,smi-mdio\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"no MDIO bus node\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"SMI slave MII\00", align 1
@realtek_smi_mdio_read = common dso_local global i32 0, align 4
@realtek_smi_mdio_write = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"SMI-%d\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"unable to register MDIO bus %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @realtek_smi_setup_mdio(%struct.realtek_smi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.realtek_smi*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  store %struct.realtek_smi* %0, %struct.realtek_smi** %3, align 8
  %6 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %7 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %6, i32 0, i32 1
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.device_node* @of_get_compatible_child(i32 %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.device_node*, %struct.device_node** %4, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %16 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %15, i32 0, i32 1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %109

21:                                               ; preds = %1
  %22 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %23 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %22, i32 0, i32 1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = call %struct.TYPE_9__* @devm_mdiobus_alloc(%struct.TYPE_10__* %24)
  %26 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %27 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %26, i32 0, i32 0
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %27, align 8
  %28 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %29 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = icmp ne %struct.TYPE_9__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %105

35:                                               ; preds = %21
  %36 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %37 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %38 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 6
  store %struct.realtek_smi* %36, %struct.realtek_smi** %40, align 8
  %41 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %42 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %44, align 8
  %45 = load i32, i32* @realtek_smi_mdio_read, align 4
  %46 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %47 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 5
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* @realtek_smi_mdio_write, align 4
  %51 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %52 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 4
  store i32 %50, i32* %54, align 8
  %55 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %56 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %61 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %62 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %61, i32 0, i32 2
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @snprintf(i32 %59, i32 %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load %struct.device_node*, %struct.device_node** %4, align 8
  %68 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %69 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %68, i32 0, i32 0
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store %struct.device_node* %67, %struct.device_node** %72, align 8
  %73 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %74 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %73, i32 0, i32 1
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %77 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %76, i32 0, i32 0
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %79, align 8
  %80 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %81 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %84 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %83, i32 0, i32 2
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  store %struct.TYPE_9__* %82, %struct.TYPE_9__** %86, align 8
  %87 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %88 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = load %struct.device_node*, %struct.device_node** %4, align 8
  %91 = call i32 @of_mdiobus_register(%struct.TYPE_9__* %89, %struct.device_node* %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %35
  %95 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %96 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %95, i32 0, i32 1
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %99 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %98, i32 0, i32 0
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %97, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %102)
  br label %105

104:                                              ; preds = %35
  store i32 0, i32* %2, align 4
  br label %109

105:                                              ; preds = %94, %32
  %106 = load %struct.device_node*, %struct.device_node** %4, align 8
  %107 = call i32 @of_node_put(%struct.device_node* %106)
  %108 = load i32, i32* %5, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %105, %104, %14
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.device_node* @of_get_compatible_child(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local %struct.TYPE_9__* @devm_mdiobus_alloc(%struct.TYPE_10__*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @of_mdiobus_register(%struct.TYPE_9__*, %struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
