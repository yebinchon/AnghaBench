; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_ports_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_ports_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sx = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sx*)* @mlxsw_sx_ports_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sx_ports_create(%struct.mlxsw_sx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlxsw_sx* %0, %struct.mlxsw_sx** %3, align 8
  %10 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %3, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @mlxsw_core_max_ports(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = mul i64 8, %15
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32 @kzalloc(i64 %17, i32 %18)
  %20 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %3, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %3, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %85

29:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %30

30:                                               ; preds = %55, %29
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %30
  %35 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %3, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @mlxsw_sx_port_module_info_get(%struct.mlxsw_sx* %35, i32 %36, i32* %6, i32* %7)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %60

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  br label %55

45:                                               ; preds = %41
  %46 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %3, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @mlxsw_sx_port_eth_create(%struct.mlxsw_sx* %46, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %59

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %44
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %30

58:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %85

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %40
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %76, %60
  %64 = load i32, i32* %8, align 4
  %65 = icmp sge i32 %64, 1
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %3, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i64 @mlxsw_sx_port_created(%struct.mlxsw_sx* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %3, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @mlxsw_sx_port_remove(%struct.mlxsw_sx* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %66
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %8, align 4
  br label %63

79:                                               ; preds = %63
  %80 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %3, align 8
  %81 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @kfree(i32 %82)
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %79, %58, %26
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @mlxsw_core_max_ports(i32) #1

declare dso_local i32 @kzalloc(i64, i32) #1

declare dso_local i32 @mlxsw_sx_port_module_info_get(%struct.mlxsw_sx*, i32, i32*, i32*) #1

declare dso_local i32 @mlxsw_sx_port_eth_create(%struct.mlxsw_sx*, i32, i32, i32) #1

declare dso_local i64 @mlxsw_sx_port_created(%struct.mlxsw_sx*, i32) #1

declare dso_local i32 @mlxsw_sx_port_remove(%struct.mlxsw_sx*, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
