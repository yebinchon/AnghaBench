; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_setup_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_setup_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_adapter = type { %struct.TYPE_6__**, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"ibm,hea-port-no\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"bad device node: eth_dn name=%pOF\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"creating MR failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"logical port id #%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehea_adapter*)* @ehea_setup_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_setup_ports(%struct.ehea_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ehea_adapter*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.ehea_adapter* %0, %struct.ehea_adapter** %3, align 8
  store %struct.device_node* null, %struct.device_node** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  br label %14

14:                                               ; preds = %73, %24, %1
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  %16 = load %struct.device_node*, %struct.device_node** %5, align 8
  %17 = call %struct.device_node* @of_get_next_child(%struct.device_node* %15, %struct.device_node* %16)
  store %struct.device_node* %17, %struct.device_node** %5, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %19, label %76

19:                                               ; preds = %14
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = call i32* @of_get_property(%struct.device_node* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load %struct.device_node*, %struct.device_node** %5, align 8
  %26 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %25)
  br label %14

27:                                               ; preds = %19
  %28 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %29 = call i64 @ehea_add_adapter_mr(%struct.ehea_adapter* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.device_node*, %struct.device_node** %5, align 8
  %34 = call i32 @of_node_put(%struct.device_node* %33)
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %77

37:                                               ; preds = %27
  %38 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.device_node*, %struct.device_node** %5, align 8
  %42 = call %struct.TYPE_6__* @ehea_setup_single_port(%struct.ehea_adapter* %38, i32 %40, %struct.device_node* %41)
  %43 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %45, i64 %47
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %48, align 8
  %49 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %51, i64 %53
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = icmp ne %struct.TYPE_6__* %55, null
  br i1 %56, label %57, label %70

57:                                               ; preds = %37
  %58 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %60, i64 %62
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @netdev_info(i32 %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %73

70:                                               ; preds = %37
  %71 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %72 = call i32 @ehea_remove_adapter_mr(%struct.ehea_adapter* %71)
  br label %73

73:                                               ; preds = %70, %57
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %14

76:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %31
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, %struct.device_node*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @ehea_add_adapter_mr(%struct.ehea_adapter*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.TYPE_6__* @ehea_setup_single_port(%struct.ehea_adapter*, i32, %struct.device_node*) #1

declare dso_local i32 @netdev_info(i32, i8*, i32) #1

declare dso_local i32 @ehea_remove_adapter_mr(%struct.ehea_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
