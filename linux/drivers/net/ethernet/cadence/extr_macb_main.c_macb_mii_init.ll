; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_mii_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_mii_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb = type { %struct.TYPE_11__*, i32, %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_13__*, %struct.macb*, i32, i32*, i32* }
%struct.TYPE_13__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i8*, i32, %struct.TYPE_13__ }

@ENXIO = common dso_local global i32 0, align 4
@NCR = common dso_local global i32 0, align 4
@MPE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"MACB_mii_bus\00", align 1
@macb_mdio_read = common dso_local global i32 0, align 4
@macb_mdio_write = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%x\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"broken fixed-link specification %pOF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macb*)* @macb_mii_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macb_mii_init(%struct.macb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.macb*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  store %struct.macb* %0, %struct.macb** %3, align 8
  %6 = load i32, i32* @ENXIO, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.macb*, %struct.macb** %3, align 8
  %9 = load i32, i32* @NCR, align 4
  %10 = load i32, i32* @MPE, align 4
  %11 = call i32 @MACB_BIT(i32 %10)
  %12 = call i32 @macb_writel(%struct.macb* %8, i32 %9, i32 %11)
  %13 = call %struct.TYPE_11__* (...) @mdiobus_alloc()
  %14 = load %struct.macb*, %struct.macb** %3, align 8
  %15 = getelementptr inbounds %struct.macb, %struct.macb* %14, i32 0, i32 0
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %15, align 8
  %16 = load %struct.macb*, %struct.macb** %3, align 8
  %17 = getelementptr inbounds %struct.macb, %struct.macb* %16, i32 0, i32 0
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = icmp ne %struct.TYPE_11__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %146

23:                                               ; preds = %1
  %24 = load %struct.macb*, %struct.macb** %3, align 8
  %25 = getelementptr inbounds %struct.macb, %struct.macb* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  %28 = load %struct.macb*, %struct.macb** %3, align 8
  %29 = getelementptr inbounds %struct.macb, %struct.macb* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 5
  store i32* @macb_mdio_read, i32** %31, align 8
  %32 = load %struct.macb*, %struct.macb** %3, align 8
  %33 = getelementptr inbounds %struct.macb, %struct.macb* %32, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 4
  store i32* @macb_mdio_write, i32** %35, align 8
  %36 = load %struct.macb*, %struct.macb** %3, align 8
  %37 = getelementptr inbounds %struct.macb, %struct.macb* %36, i32 0, i32 0
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %42 = load %struct.macb*, %struct.macb** %3, align 8
  %43 = getelementptr inbounds %struct.macb, %struct.macb* %42, i32 0, i32 3
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.macb*, %struct.macb** %3, align 8
  %48 = getelementptr inbounds %struct.macb, %struct.macb* %47, i32 0, i32 3
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @snprintf(i32 %40, i32 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %46, i32 %51)
  %53 = load %struct.macb*, %struct.macb** %3, align 8
  %54 = load %struct.macb*, %struct.macb** %3, align 8
  %55 = getelementptr inbounds %struct.macb, %struct.macb* %54, i32 0, i32 0
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  store %struct.macb* %53, %struct.macb** %57, align 8
  %58 = load %struct.macb*, %struct.macb** %3, align 8
  %59 = getelementptr inbounds %struct.macb, %struct.macb* %58, i32 0, i32 3
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load %struct.macb*, %struct.macb** %3, align 8
  %63 = getelementptr inbounds %struct.macb, %struct.macb* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  store %struct.TYPE_13__* %61, %struct.TYPE_13__** %65, align 8
  %66 = load %struct.macb*, %struct.macb** %3, align 8
  %67 = getelementptr inbounds %struct.macb, %struct.macb* %66, i32 0, i32 2
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load %struct.macb*, %struct.macb** %3, align 8
  %71 = getelementptr inbounds %struct.macb, %struct.macb* %70, i32 0, i32 0
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = call i32 @dev_set_drvdata(i32* %69, %struct.TYPE_11__* %72)
  %74 = load %struct.macb*, %struct.macb** %3, align 8
  %75 = getelementptr inbounds %struct.macb, %struct.macb* %74, i32 0, i32 3
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load %struct.device_node*, %struct.device_node** %78, align 8
  store %struct.device_node* %79, %struct.device_node** %4, align 8
  %80 = load %struct.device_node*, %struct.device_node** %4, align 8
  %81 = icmp ne %struct.device_node* %80, null
  br i1 %81, label %82, label %102

82:                                               ; preds = %23
  %83 = load %struct.device_node*, %struct.device_node** %4, align 8
  %84 = call i64 @of_phy_is_fixed_link(%struct.device_node* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  %87 = load %struct.device_node*, %struct.device_node** %4, align 8
  %88 = call i64 @of_phy_register_fixed_link(%struct.device_node* %87)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load %struct.macb*, %struct.macb** %3, align 8
  %92 = getelementptr inbounds %struct.macb, %struct.macb* %91, i32 0, i32 3
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load %struct.device_node*, %struct.device_node** %4, align 8
  %96 = call i32 @dev_err(%struct.TYPE_13__* %94, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %95)
  br label %137

97:                                               ; preds = %86
  %98 = load %struct.macb*, %struct.macb** %3, align 8
  %99 = getelementptr inbounds %struct.macb, %struct.macb* %98, i32 0, i32 0
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = call i32 @mdiobus_register(%struct.TYPE_11__* %100)
  store i32 %101, i32* %5, align 4
  br label %108

102:                                              ; preds = %82, %23
  %103 = load %struct.macb*, %struct.macb** %3, align 8
  %104 = getelementptr inbounds %struct.macb, %struct.macb* %103, i32 0, i32 0
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = load %struct.device_node*, %struct.device_node** %4, align 8
  %107 = call i32 @of_mdiobus_register(%struct.TYPE_11__* %105, %struct.device_node* %106)
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %102, %97
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  br label %126

112:                                              ; preds = %108
  %113 = load %struct.macb*, %struct.macb** %3, align 8
  %114 = getelementptr inbounds %struct.macb, %struct.macb* %113, i32 0, i32 2
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = call i32 @macb_mii_probe(%struct.TYPE_12__* %115)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  br label %121

120:                                              ; preds = %112
  store i32 0, i32* %2, align 4
  br label %148

121:                                              ; preds = %119
  %122 = load %struct.macb*, %struct.macb** %3, align 8
  %123 = getelementptr inbounds %struct.macb, %struct.macb* %122, i32 0, i32 0
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = call i32 @mdiobus_unregister(%struct.TYPE_11__* %124)
  br label %126

126:                                              ; preds = %121, %111
  %127 = load %struct.device_node*, %struct.device_node** %4, align 8
  %128 = icmp ne %struct.device_node* %127, null
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = load %struct.device_node*, %struct.device_node** %4, align 8
  %131 = call i64 @of_phy_is_fixed_link(%struct.device_node* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load %struct.device_node*, %struct.device_node** %4, align 8
  %135 = call i32 @of_phy_deregister_fixed_link(%struct.device_node* %134)
  br label %136

136:                                              ; preds = %133, %129, %126
  br label %137

137:                                              ; preds = %136, %90
  %138 = load %struct.macb*, %struct.macb** %3, align 8
  %139 = getelementptr inbounds %struct.macb, %struct.macb* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @of_node_put(i32 %140)
  %142 = load %struct.macb*, %struct.macb** %3, align 8
  %143 = getelementptr inbounds %struct.macb, %struct.macb* %142, i32 0, i32 0
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = call i32 @mdiobus_free(%struct.TYPE_11__* %144)
  br label %146

146:                                              ; preds = %137, %20
  %147 = load i32, i32* %5, align 4
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %146, %120
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i32 @macb_writel(%struct.macb*, i32, i32) #1

declare dso_local i32 @MACB_BIT(i32) #1

declare dso_local %struct.TYPE_11__* @mdiobus_alloc(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.TYPE_11__*) #1

declare dso_local i64 @of_phy_is_fixed_link(%struct.device_node*) #1

declare dso_local i64 @of_phy_register_fixed_link(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, %struct.device_node*) #1

declare dso_local i32 @mdiobus_register(%struct.TYPE_11__*) #1

declare dso_local i32 @of_mdiobus_register(%struct.TYPE_11__*, %struct.device_node*) #1

declare dso_local i32 @macb_mii_probe(%struct.TYPE_12__*) #1

declare dso_local i32 @mdiobus_unregister(%struct.TYPE_11__*) #1

declare dso_local i32 @of_phy_deregister_fixed_link(%struct.device_node*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @mdiobus_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
