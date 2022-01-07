; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_geneve.c_mlx5_geneve_tlv_option_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_geneve.c_mlx5_geneve_tlv_option_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_geneve = type { i64, i64, i32, i32, i64, i32 }
%struct.geneve_opt = type { i64, i64, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [107 x i8] c"Won't create Geneve TLV opt object with class:type:len = 0x%x:0x%x:%d (another class:type already exists)\0A\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"Failed creating Geneve TLV opt object class:type:len = 0x%x:0x%x:%d (err=%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_geneve_tlv_option_add(%struct.mlx5_geneve* %0, %struct.geneve_opt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_geneve*, align 8
  %5 = alloca %struct.geneve_opt*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_geneve* %0, %struct.mlx5_geneve** %4, align 8
  store %struct.geneve_opt* %1, %struct.geneve_opt** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.mlx5_geneve*, %struct.mlx5_geneve** %4, align 8
  %8 = call i64 @IS_ERR_OR_NULL(%struct.mlx5_geneve* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EOPNOTSUPP, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %116

13:                                               ; preds = %2
  %14 = load %struct.mlx5_geneve*, %struct.mlx5_geneve** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5_geneve, %struct.mlx5_geneve* %14, i32 0, i32 3
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.mlx5_geneve*, %struct.mlx5_geneve** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5_geneve, %struct.mlx5_geneve* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %60

21:                                               ; preds = %13
  %22 = load %struct.mlx5_geneve*, %struct.mlx5_geneve** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5_geneve, %struct.mlx5_geneve* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.geneve_opt*, %struct.geneve_opt** %5, align 8
  %26 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %21
  %30 = load %struct.mlx5_geneve*, %struct.mlx5_geneve** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5_geneve, %struct.mlx5_geneve* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.geneve_opt*, %struct.geneve_opt** %5, align 8
  %34 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load %struct.mlx5_geneve*, %struct.mlx5_geneve** %4, align 8
  %39 = getelementptr inbounds %struct.mlx5_geneve, %struct.mlx5_geneve* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  br label %59

42:                                               ; preds = %29, %21
  %43 = load %struct.mlx5_geneve*, %struct.mlx5_geneve** %4, align 8
  %44 = getelementptr inbounds %struct.mlx5_geneve, %struct.mlx5_geneve* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.geneve_opt*, %struct.geneve_opt** %5, align 8
  %47 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @be16_to_cpu(i64 %48)
  %50 = load %struct.geneve_opt*, %struct.geneve_opt** %5, align 8
  %51 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.geneve_opt*, %struct.geneve_opt** %5, align 8
  %54 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i32, i8*, i32, i64, i32, ...) @mlx5_core_warn(i32 %45, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str, i64 0, i64 0), i32 %49, i64 %52, i32 %55)
  %57 = load i32, i32* @EOPNOTSUPP, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %111

59:                                               ; preds = %37
  br label %110

60:                                               ; preds = %13
  %61 = load %struct.mlx5_geneve*, %struct.mlx5_geneve** %4, align 8
  %62 = getelementptr inbounds %struct.mlx5_geneve, %struct.mlx5_geneve* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.geneve_opt*, %struct.geneve_opt** %5, align 8
  %65 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.geneve_opt*, %struct.geneve_opt** %5, align 8
  %68 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.geneve_opt*, %struct.geneve_opt** %5, align 8
  %71 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @mlx5_geneve_tlv_option_create(i32 %63, i64 %66, i64 %69, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %60
  %77 = load %struct.mlx5_geneve*, %struct.mlx5_geneve** %4, align 8
  %78 = getelementptr inbounds %struct.mlx5_geneve, %struct.mlx5_geneve* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.geneve_opt*, %struct.geneve_opt** %5, align 8
  %81 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @be16_to_cpu(i64 %82)
  %84 = load %struct.geneve_opt*, %struct.geneve_opt** %5, align 8
  %85 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.geneve_opt*, %struct.geneve_opt** %5, align 8
  %88 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 (i32, i8*, i32, i64, i32, ...) @mlx5_core_warn(i32 %79, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %83, i64 %86, i32 %89, i32 %90)
  br label %111

92:                                               ; preds = %60
  %93 = load %struct.geneve_opt*, %struct.geneve_opt** %5, align 8
  %94 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.mlx5_geneve*, %struct.mlx5_geneve** %4, align 8
  %97 = getelementptr inbounds %struct.mlx5_geneve, %struct.mlx5_geneve* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.geneve_opt*, %struct.geneve_opt** %5, align 8
  %99 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.mlx5_geneve*, %struct.mlx5_geneve** %4, align 8
  %102 = getelementptr inbounds %struct.mlx5_geneve, %struct.mlx5_geneve* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.mlx5_geneve*, %struct.mlx5_geneve** %4, align 8
  %105 = getelementptr inbounds %struct.mlx5_geneve, %struct.mlx5_geneve* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load %struct.mlx5_geneve*, %struct.mlx5_geneve** %4, align 8
  %107 = getelementptr inbounds %struct.mlx5_geneve, %struct.mlx5_geneve* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %107, align 8
  br label %110

110:                                              ; preds = %92, %59
  br label %111

111:                                              ; preds = %110, %76, %42
  %112 = load %struct.mlx5_geneve*, %struct.mlx5_geneve** %4, align 8
  %113 = getelementptr inbounds %struct.mlx5_geneve, %struct.mlx5_geneve* %112, i32 0, i32 3
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %111, %10
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.mlx5_geneve*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx5_core_warn(i32, i8*, i32, i64, i32, ...) #1

declare dso_local i32 @be16_to_cpu(i64) #1

declare dso_local i32 @mlx5_geneve_tlv_option_create(i32, i64, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
