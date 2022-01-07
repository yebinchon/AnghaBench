; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_cmd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_cmd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@MLX4_CMD_CLEANUP_STRUCT = common dso_local global i32 0, align 4
@MLX4_HCR_BASE = common dso_local global i64 0, align 8
@MLX4_HCR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Couldn't map command register\0A\00", align 1
@MLX4_CMD_CLEANUP_HCR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MLX4_CMD_CLEANUP_VHCR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"mlx4_cmd\00", align 1
@MLX4_MAILBOX_SIZE = common dso_local global i32 0, align 4
@MLX4_CMD_CLEANUP_POOL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_cmd_init(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  %6 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %7 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %6)
  store %struct.mlx4_priv* %7, %struct.mlx4_priv** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %9 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %1
  %14 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %15 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 7
  %17 = call i32 @init_rwsem(i32* %16)
  %18 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %19 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 6
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %23 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 5
  %25 = call i32 @sema_init(i32* %24, i32 1)
  %26 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %27 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %30 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %33 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load i32, i32* @MLX4_CMD_CLEANUP_STRUCT, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %13, %1
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %40 = call i32 @mlx4_is_slave(%struct.mlx4_dev* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %74, label %42

42:                                               ; preds = %38
  %43 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %44 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %74, label %48

48:                                               ; preds = %42
  %49 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %50 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = call i64 @pci_resource_start(%struct.TYPE_8__* %53, i32 0)
  %55 = load i64, i64* @MLX4_HCR_BASE, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i32, i32* @MLX4_HCR_SIZE, align 4
  %58 = call i64 @ioremap(i64 %56, i32 %57)
  %59 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %60 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  store i64 %58, i64* %61, align 8
  %62 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %63 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %48
  %68 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %69 = call i32 @mlx4_err(%struct.mlx4_dev* %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %140

70:                                               ; preds = %48
  %71 = load i32, i32* @MLX4_CMD_CLEANUP_HCR, align 4
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %70, %42, %38
  %75 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %76 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %110

78:                                               ; preds = %74
  %79 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %80 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %110, label %84

84:                                               ; preds = %78
  %85 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %86 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* @PAGE_SIZE, align 4
  %92 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %93 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call i64 @dma_alloc_coherent(i32* %90, i32 %91, i32* %94, i32 %95)
  %97 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %98 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i64 %96, i64* %99, align 8
  %100 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %101 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %84
  br label %140

106:                                              ; preds = %84
  %107 = load i32, i32* @MLX4_CMD_CLEANUP_VHCR, align 4
  %108 = load i32, i32* %5, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %106, %78, %74
  %111 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %112 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %139, label %116

116:                                              ; preds = %110
  %117 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %118 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* @MLX4_MAILBOX_SIZE, align 4
  %124 = load i32, i32* @MLX4_MAILBOX_SIZE, align 4
  %125 = call i64 @dma_pool_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %122, i32 %123, i32 %124, i32 0)
  %126 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %127 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 2
  store i64 %125, i64* %128, align 8
  %129 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %130 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %116
  br label %140

135:                                              ; preds = %116
  %136 = load i32, i32* @MLX4_CMD_CLEANUP_POOL, align 4
  %137 = load i32, i32* %5, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %135, %110
  store i32 0, i32* %2, align 4
  br label %146

140:                                              ; preds = %134, %105, %67
  %141 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @mlx4_cmd_cleanup(%struct.mlx4_dev* %141, i32 %142)
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %140, %139
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i64 @ioremap(i64, i32) #1

declare dso_local i64 @pci_resource_start(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*) #1

declare dso_local i64 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i64 @dma_pool_create(i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @mlx4_cmd_cleanup(%struct.mlx4_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
