; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_enable_sriov.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_enable_sriov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@MLX4_MAX_NUM_VF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@pf_loading = common dso_local global i32 0, align 4
@MLX4_FLAG_SRIOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"SR-IOV was already enabled, but with num_vfs (%d) different than requested (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to allocate memory for VFs\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"requested vfs (%d) > available vfs (%d). Continuing without SR_IOV\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Enabling SR-IOV with %d VFs\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"Failed to enable SR-IOV, continuing without SR-IOV (err = %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Running in master mode\0A\00", align 1
@MLX4_FLAG_MASTER = common dso_local global i32 0, align 4
@MLX4_FLAG_SLAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, %struct.pci_dev*, i32, i32, i32)* @mlx4_enable_sriov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_enable_sriov(%struct.mlx4_dev* %0, %struct.pci_dev* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %16 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %18 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %19 = call i32 @pci_sriov_get_totalvfs(%struct.pci_dev* %18)
  %20 = load i32, i32* @MLX4_MAX_NUM_VF, align 4
  %21 = call i32 @min(i32 %19, i32 %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %5
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kcalloc(i32 %25, i32 4, i32 %26)
  %28 = bitcast i8* %27 to i32*
  %29 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %30 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  %31 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %32 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %24
  br label %124

36:                                               ; preds = %24
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %6, align 4
  br label %139

38:                                               ; preds = %5
  %39 = call i32 @atomic_inc(i32* @pf_loading)
  %40 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %41 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MLX4_FLAG_SRIOV, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %51, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %50, %46
  br label %57

57:                                               ; preds = %56, %38
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8* @kcalloc(i32 %58, i32 4, i32 %59)
  %61 = bitcast i8* %60 to i32*
  %62 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %63 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %62, i32 0, i32 1
  store i32* %61, i32** %63, align 8
  %64 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %65 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* null, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %70 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %122

71:                                               ; preds = %57
  %72 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %73 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @MLX4_FLAG_SRIOV, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %96, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %14, align 4
  %86 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %83, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %13, align 4
  br label %122

89:                                               ; preds = %78
  %90 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  %93 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @pci_enable_sriov(%struct.pci_dev* %93, i32 %94)
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %89, %71
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %101 = load i32, i32* %13, align 4
  %102 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %100, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  br label %122

103:                                              ; preds = %96
  %104 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %105 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %106 = load i32, i32* @MLX4_FLAG_SRIOV, align 4
  %107 = load i32, i32* @MLX4_FLAG_MASTER, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* %12, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* @MLX4_FLAG_SLAVE, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %12, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %117 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %116, i32 0, i32 2
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  store i32 %115, i32* %119, align 4
  br label %120

120:                                              ; preds = %103
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %6, align 4
  br label %139

122:                                              ; preds = %99, %82, %68
  %123 = call i32 @atomic_dec(i32* @pf_loading)
  br label %124

124:                                              ; preds = %122, %35
  %125 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %126 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %125, i32 0, i32 2
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  store i32 0, i32* %128, align 4
  %129 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %130 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @kfree(i32* %131)
  %133 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %134 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %133, i32 0, i32 1
  store i32* null, i32** %134, align 8
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* @MLX4_FLAG_MASTER, align 4
  %137 = xor i32 %136, -1
  %138 = and i32 %135, %137
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %124, %120, %36
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pci_sriov_get_totalvfs(%struct.pci_dev*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @pci_enable_sriov(%struct.pci_dev*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
