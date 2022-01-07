; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_probe_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_probe_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ehea_adapter = type { %struct.ehea_port** }
%struct.ehea_port = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"adding port with logical port id=%d failed: port already configured\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"no logical port with id %d found\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"creating MR failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EHEA_MAX_PORTS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"added: (logical port id=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ehea_probe_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_probe_port(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ehea_adapter*, align 8
  %11 = alloca %struct.ehea_port*, align 8
  %12 = alloca %struct.device_node*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.ehea_adapter* @dev_get_drvdata(%struct.device* %15)
  store %struct.ehea_adapter* %16, %struct.ehea_adapter** %10, align 8
  store %struct.device_node* null, %struct.device_node** %12, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @sscanf(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %14)
  %19 = load %struct.ehea_adapter*, %struct.ehea_adapter** %10, align 8
  %20 = load i32, i32* %14, align 4
  %21 = call %struct.ehea_port* @ehea_get_port(%struct.ehea_adapter* %19, i32 %20)
  store %struct.ehea_port* %21, %struct.ehea_port** %11, align 8
  %22 = load %struct.ehea_port*, %struct.ehea_port** %11, align 8
  %23 = icmp ne %struct.ehea_port* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %4
  %25 = load %struct.ehea_port*, %struct.ehea_port** %11, align 8
  %26 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %14, align 4
  %29 = call i32 @netdev_info(i32 %27, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %102

32:                                               ; preds = %4
  %33 = load %struct.ehea_adapter*, %struct.ehea_adapter** %10, align 8
  %34 = load i32, i32* %14, align 4
  %35 = call %struct.device_node* @ehea_get_eth_dn(%struct.ehea_adapter* %33, i32 %34)
  store %struct.device_node* %35, %struct.device_node** %12, align 8
  %36 = load %struct.device_node*, %struct.device_node** %12, align 8
  %37 = icmp ne %struct.device_node* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %102

43:                                               ; preds = %32
  %44 = load %struct.ehea_adapter*, %struct.ehea_adapter** %10, align 8
  %45 = call i64 @ehea_add_adapter_mr(%struct.ehea_adapter* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.device_node*, %struct.device_node** %12, align 8
  %50 = call i32 @of_node_put(%struct.device_node* %49)
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %102

53:                                               ; preds = %43
  %54 = load %struct.ehea_adapter*, %struct.ehea_adapter** %10, align 8
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.device_node*, %struct.device_node** %12, align 8
  %57 = call %struct.ehea_port* @ehea_setup_single_port(%struct.ehea_adapter* %54, i32 %55, %struct.device_node* %56)
  store %struct.ehea_port* %57, %struct.ehea_port** %11, align 8
  %58 = load %struct.device_node*, %struct.device_node** %12, align 8
  %59 = call i32 @of_node_put(%struct.device_node* %58)
  %60 = load %struct.ehea_port*, %struct.ehea_port** %11, align 8
  %61 = icmp ne %struct.ehea_port* %60, null
  br i1 %61, label %62, label %94

62:                                               ; preds = %53
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %85, %62
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @EHEA_MAX_PORTS, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %63
  %68 = load %struct.ehea_adapter*, %struct.ehea_adapter** %10, align 8
  %69 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %68, i32 0, i32 0
  %70 = load %struct.ehea_port**, %struct.ehea_port*** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.ehea_port*, %struct.ehea_port** %70, i64 %72
  %74 = load %struct.ehea_port*, %struct.ehea_port** %73, align 8
  %75 = icmp ne %struct.ehea_port* %74, null
  br i1 %75, label %84, label %76

76:                                               ; preds = %67
  %77 = load %struct.ehea_port*, %struct.ehea_port** %11, align 8
  %78 = load %struct.ehea_adapter*, %struct.ehea_adapter** %10, align 8
  %79 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %78, i32 0, i32 0
  %80 = load %struct.ehea_port**, %struct.ehea_port*** %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.ehea_port*, %struct.ehea_port** %80, i64 %82
  store %struct.ehea_port* %77, %struct.ehea_port** %83, align 8
  br label %88

84:                                               ; preds = %67
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %63

88:                                               ; preds = %76, %63
  %89 = load %struct.ehea_port*, %struct.ehea_port** %11, align 8
  %90 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @netdev_info(i32 %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  br label %99

94:                                               ; preds = %53
  %95 = load %struct.ehea_adapter*, %struct.ehea_adapter** %10, align 8
  %96 = call i32 @ehea_remove_adapter_mr(%struct.ehea_adapter* %95)
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %5, align 4
  br label %102

99:                                               ; preds = %88
  %100 = load i64, i64* %9, align 8
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %99, %94, %47, %38, %24
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local %struct.ehea_adapter* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local %struct.ehea_port* @ehea_get_port(%struct.ehea_adapter*, i32) #1

declare dso_local i32 @netdev_info(i32, i8*, i32) #1

declare dso_local %struct.device_node* @ehea_get_eth_dn(%struct.ehea_adapter*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i64 @ehea_add_adapter_mr(%struct.ehea_adapter*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.ehea_port* @ehea_setup_single_port(%struct.ehea_adapter*, i32, %struct.device_node*) #1

declare dso_local i32 @ehea_remove_adapter_mr(%struct.ehea_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
