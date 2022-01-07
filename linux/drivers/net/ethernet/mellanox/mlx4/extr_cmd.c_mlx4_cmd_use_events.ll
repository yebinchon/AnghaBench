; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_cmd_use_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_cmd_use_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_cmd_use_events(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  %7 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %8 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %7)
  store %struct.mlx4_priv* %8, %struct.mlx4_priv** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %10 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.TYPE_4__* @kmalloc_array(i32 %12, i32 4, i32 %13)
  %15 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %16 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 8
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %17, align 8
  %18 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %19 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %150

26:                                               ; preds = %1
  %27 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %28 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %32 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = call i32 @mutex_lock(i32* %33)
  br label %35

35:                                               ; preds = %30, %26
  %36 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %37 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 4
  %39 = call i32 @down_write(i32* %38)
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %76, %35
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %43 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %79

47:                                               ; preds = %40
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %50 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %48, i32* %56, align 4
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  %59 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %60 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 %58, i32* %66, align 4
  %67 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %68 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = call i32 @init_completion(i32* %74)
  br label %76

76:                                               ; preds = %47
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %40

79:                                               ; preds = %40
  %80 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %81 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %85 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i32 -1, i32* %91, align 4
  %92 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %93 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 7
  store i64 0, i64* %94, align 8
  %95 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %96 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 6
  %98 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %99 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @sema_init(i32* %97, i32 %101)
  %103 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %104 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  store i32 1, i32* %105, align 4
  br label %106

106:                                              ; preds = %117, %79
  %107 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %108 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %112 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %110, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %106
  br label %117

117:                                              ; preds = %116
  %118 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %119 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 %121, 1
  store i32 %122, i32* %120, align 4
  br label %106

123:                                              ; preds = %106
  %124 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %125 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %126, align 4
  %129 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %130 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 5
  %132 = call i32 @down(i32* %131)
  %133 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %134 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  store i32 1, i32* %135, align 8
  %136 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %137 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 4
  %139 = call i32 @up_write(i32* %138)
  %140 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %141 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %123
  %144 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %145 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 3
  %147 = call i32 @mutex_unlock(i32* %146)
  br label %148

148:                                              ; preds = %143, %123
  %149 = load i32, i32* %6, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %148, %23
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local %struct.TYPE_4__* @kmalloc_array(i32, i32, i32) #1

declare dso_local i64 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
