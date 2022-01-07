; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchib.c_mlxsw_sib_ports_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchib.c_mlxsw_sib_ports_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sib = type { i32 }

@MLXSW_PORT_MAX_IB_PORTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sib*)* @mlxsw_sib_ports_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sib_ports_create(%struct.mlxsw_sib* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sib*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlxsw_sib* %0, %struct.mlxsw_sib** %3, align 8
  %9 = load i32, i32* @MLXSW_PORT_MAX_IB_PORTS, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 8, %10
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32 @kzalloc(i64 %12, i32 %13)
  %15 = load %struct.mlxsw_sib*, %struct.mlxsw_sib** %3, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sib, %struct.mlxsw_sib* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.mlxsw_sib*, %struct.mlxsw_sib** %3, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sib, %struct.mlxsw_sib* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %80

24:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %25

25:                                               ; preds = %50, %24
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @MLXSW_PORT_MAX_IB_PORTS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %25
  %30 = load %struct.mlxsw_sib*, %struct.mlxsw_sib** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @mlxsw_sib_port_module_info_get(%struct.mlxsw_sib* %30, i32 %31, i32* %5, i32* %6)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %55

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  br label %50

40:                                               ; preds = %36
  %41 = load %struct.mlxsw_sib*, %struct.mlxsw_sib** %3, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @mlxsw_sib_port_create(%struct.mlxsw_sib* %41, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %54

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %39
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %25

53:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %80

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %35
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %71, %55
  %59 = load i32, i32* %7, align 4
  %60 = icmp sge i32 %59, 1
  br i1 %60, label %61, label %74

61:                                               ; preds = %58
  %62 = load %struct.mlxsw_sib*, %struct.mlxsw_sib** %3, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i64 @mlxsw_sib_port_created(%struct.mlxsw_sib* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.mlxsw_sib*, %struct.mlxsw_sib** %3, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @mlxsw_sib_port_remove(%struct.mlxsw_sib* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %61
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %7, align 4
  br label %58

74:                                               ; preds = %58
  %75 = load %struct.mlxsw_sib*, %struct.mlxsw_sib** %3, align 8
  %76 = getelementptr inbounds %struct.mlxsw_sib, %struct.mlxsw_sib* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @kfree(i32 %77)
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %74, %53, %21
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @kzalloc(i64, i32) #1

declare dso_local i32 @mlxsw_sib_port_module_info_get(%struct.mlxsw_sib*, i32, i32*, i32*) #1

declare dso_local i32 @mlxsw_sib_port_create(%struct.mlxsw_sib*, i32, i32, i32) #1

declare dso_local i64 @mlxsw_sib_port_created(%struct.mlxsw_sib*, i32) #1

declare dso_local i32 @mlxsw_sib_port_remove(%struct.mlxsw_sib*, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
