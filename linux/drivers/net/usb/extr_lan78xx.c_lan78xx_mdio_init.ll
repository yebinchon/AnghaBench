; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_mdio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_mdio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan78xx_net = type { i32, %struct.TYPE_10__*, i32, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i8*, i32, i32, i32, i32, i8* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"can't allocate MDIO bus\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@lan78xx_mdiobus_read = common dso_local global i32 0, align 4
@lan78xx_mdiobus_write = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"lan78xx-mdiobus\00", align 1
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"usb-%03d:%03d\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"can't register MDIO bus\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"registered mdiobus bus %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan78xx_net*)* @lan78xx_mdio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_mdio_init(%struct.lan78xx_net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lan78xx_net*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  store %struct.lan78xx_net* %0, %struct.lan78xx_net** %3, align 8
  %6 = call %struct.TYPE_10__* (...) @mdiobus_alloc()
  %7 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %8 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %7, i32 0, i32 1
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %8, align 8
  %9 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %10 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %9, i32 0, i32 1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = icmp ne %struct.TYPE_10__* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %15 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @netdev_err(i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %111

20:                                               ; preds = %1
  %21 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %22 = bitcast %struct.lan78xx_net* %21 to i8*
  %23 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %24 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %23, i32 0, i32 1
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 5
  store i8* %22, i8** %26, align 8
  %27 = load i32, i32* @lan78xx_mdiobus_read, align 4
  %28 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %29 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 4
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* @lan78xx_mdiobus_write, align 4
  %33 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %34 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %33, i32 0, i32 1
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 3
  store i32 %32, i32* %36, align 8
  %37 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %38 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %37, i32 0, i32 1
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %40, align 8
  %41 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %42 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %41, i32 0, i32 1
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %47 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %48 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %47, i32 0, i32 3
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %55 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %54, i32 0, i32 3
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @snprintf(i32 %45, i32 %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %58)
  %60 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %61 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %73 [
    i32 130, label %63
    i32 128, label %63
    i32 129, label %68
  ]

63:                                               ; preds = %20, %20
  %64 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %65 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %64, i32 0, i32 1
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  store i32 -3, i32* %67, align 8
  br label %73

68:                                               ; preds = %20
  %69 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %70 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %69, i32 0, i32 1
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  store i32 -256, i32* %72, align 8
  br label %73

73:                                               ; preds = %20, %68, %63
  %74 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %75 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %74, i32 0, i32 3
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.device_node* @of_get_child_by_name(i32 %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store %struct.device_node* %80, %struct.device_node** %4, align 8
  %81 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %82 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %81, i32 0, i32 1
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = load %struct.device_node*, %struct.device_node** %4, align 8
  %85 = call i32 @of_mdiobus_register(%struct.TYPE_10__* %83, %struct.device_node* %84)
  store i32 %85, i32* %5, align 4
  %86 = load %struct.device_node*, %struct.device_node** %4, align 8
  %87 = call i32 @of_node_put(%struct.device_node* %86)
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %73
  %91 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %92 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @netdev_err(i32 %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %105

95:                                               ; preds = %73
  %96 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %97 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %100 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %99, i32 0, i32 1
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @netdev_dbg(i32 %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %103)
  store i32 0, i32* %2, align 4
  br label %111

105:                                              ; preds = %90
  %106 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %107 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %106, i32 0, i32 1
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = call i32 @mdiobus_free(%struct.TYPE_10__* %108)
  %110 = load i32, i32* %5, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %105, %95, %13
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.TYPE_10__* @mdiobus_alloc(...) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local i32 @of_mdiobus_register(%struct.TYPE_10__*, %struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

declare dso_local i32 @mdiobus_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
