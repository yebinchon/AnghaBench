; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_mdio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_mdio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gswip_priv = type { i32, %struct.dsa_switch* }
%struct.dsa_switch = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32, i32, %struct.gswip_priv* }
%struct.device_node = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@gswip_mdio_rd = common dso_local global i32 0, align 4
@gswip_mdio_wr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"lantiq,xrx200-mdio\00", align 1
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s-mii\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gswip_priv*, %struct.device_node*)* @gswip_mdio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gswip_mdio(%struct.gswip_priv* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gswip_priv*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.dsa_switch*, align 8
  store %struct.gswip_priv* %0, %struct.gswip_priv** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %7 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %8 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %7, i32 0, i32 1
  %9 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  store %struct.dsa_switch* %9, %struct.dsa_switch** %6, align 8
  %10 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %11 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.TYPE_3__* @devm_mdiobus_alloc(i32 %12)
  %14 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %15 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %14, i32 0, i32 0
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %15, align 8
  %16 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %17 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %74

23:                                               ; preds = %2
  %24 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %25 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %26 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 6
  store %struct.gswip_priv* %24, %struct.gswip_priv** %28, align 8
  %29 = load i32, i32* @gswip_mdio_rd, align 4
  %30 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %31 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 5
  store i32 %29, i32* %33, align 8
  %34 = load i32, i32* @gswip_mdio_wr, align 4
  %35 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %36 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 4
  store i32 %34, i32* %38, align 4
  %39 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %40 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %42, align 8
  %43 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %44 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %49 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %50 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @dev_name(i32 %51)
  %53 = call i32 @snprintf(i32 %47, i32 %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  %54 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %55 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %58 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  store i32 %56, i32* %60, align 4
  %61 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %62 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = xor i32 %63, -1
  %65 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %66 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i32 %64, i32* %68, align 8
  %69 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %70 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load %struct.device_node*, %struct.device_node** %5, align 8
  %73 = call i32 @of_mdiobus_register(%struct.TYPE_3__* %71, %struct.device_node* %72)
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %23, %20
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.TYPE_3__* @devm_mdiobus_alloc(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(i32) #1

declare dso_local i32 @of_mdiobus_register(%struct.TYPE_3__*, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
