; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_dynamic_config.c_sja1105et_fdb_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_dynamic_config.c_sja1105et_fdb_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.sja1105_l2_lookup_params_entry* }
%struct.sja1105_l2_lookup_params_entry = type { i32, i64 }

@BLK_IDX_L2_LOOKUP_PARAMS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sja1105et_fdb_hash(%struct.sja1105_private* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.sja1105_private*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sja1105_l2_lookup_params_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %16 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i64, i64* @BLK_IDX_L2_LOOKUP_PARAMS, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.sja1105_l2_lookup_params_entry*, %struct.sja1105_l2_lookup_params_entry** %21, align 8
  store %struct.sja1105_l2_lookup_params_entry* %22, %struct.sja1105_l2_lookup_params_entry** %7, align 8
  %23 = load %struct.sja1105_l2_lookup_params_entry*, %struct.sja1105_l2_lookup_params_entry** %7, align 8
  %24 = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, %struct.sja1105_l2_lookup_params_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = shl i32 %26, 1
  %28 = add nsw i32 1, %27
  store i32 %28, i32* %9, align 4
  %29 = load %struct.sja1105_l2_lookup_params_entry*, %struct.sja1105_l2_lookup_params_entry** %7, align 8
  %30 = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, %struct.sja1105_l2_lookup_params_entry* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %36

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  br label %36

36:                                               ; preds = %34, %33
  %37 = phi i32 [ 0, %33 ], [ %35, %34 ]
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = shl i32 %38, 48
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @ether_addr_to_u64(i32* %40)
  %42 = or i32 %39, %41
  store i32 %42, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 56, i32* %13, align 4
  br label %43

43:                                               ; preds = %61, %36
  %44 = load i32, i32* %13, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = load i32, i32* %13, align 4
  %50 = zext i32 %49 to i64
  %51 = shl i64 255, %50
  %52 = and i64 %48, %51
  %53 = load i32, i32* %13, align 4
  %54 = zext i32 %53 to i64
  %55 = lshr i64 %52, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @sja1105_crc8_add(i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %46
  %62 = load i32, i32* %13, align 4
  %63 = sub nsw i32 %62, 8
  store i32 %63, i32* %13, align 4
  br label %43

64:                                               ; preds = %43
  %65 = load i32, i32* %12, align 4
  ret i32 %65
}

declare dso_local i32 @ether_addr_to_u64(i32*) #1

declare dso_local i32 @sja1105_crc8_add(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
