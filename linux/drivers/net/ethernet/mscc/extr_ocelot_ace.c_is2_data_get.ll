; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_ace.c_is2_data_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_ace.c_is2_data_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.vcap_data = type { i32, i32, i32, i32, i32, i64, i32 }

@vcap_is2 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@VCAP_TG_HALF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcap_data*, i32)* @is2_data_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @is2_data_get(%struct.vcap_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vcap_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vcap_data* %0, %struct.vcap_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vcap_is2, i32 0, i32 0), align 8
  store i32 %12, i32* %11, align 4
  %13 = load %struct.vcap_data*, %struct.vcap_data** %3, align 8
  %14 = getelementptr inbounds %struct.vcap_data, %struct.vcap_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @VCAP_TG_HALF, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 2, i32 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %4, align 4
  %21 = srem i32 %20, 2
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vcap_is2, i32 0, i32 1), align 4
  %23 = load i32, i32* %8, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vcap_is2, i32 0, i32 1), align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %9, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sub nsw i32 %25, %28
  %30 = load i32, i32* %9, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %10, align 4
  %32 = load %struct.vcap_data*, %struct.vcap_data** %3, align 8
  %33 = getelementptr inbounds %struct.vcap_data, %struct.vcap_data* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load %struct.vcap_data*, %struct.vcap_data** %3, align 8
  %35 = getelementptr inbounds %struct.vcap_data, %struct.vcap_data* %34, i32 0, i32 6
  store i32 0, i32* %35, align 8
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %65, %2
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* %11, align 4
  %45 = mul nsw i32 %43, %44
  store i32 %45, i32* %7, align 4
  %46 = load %struct.vcap_data*, %struct.vcap_data** %3, align 8
  %47 = getelementptr inbounds %struct.vcap_data, %struct.vcap_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = shl i32 %48, %49
  %51 = load %struct.vcap_data*, %struct.vcap_data** %3, align 8
  %52 = getelementptr inbounds %struct.vcap_data, %struct.vcap_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %55, %56
  %58 = sub nsw i32 %57, 1
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @GENMASK(i32 %58, i32 %59)
  %61 = load %struct.vcap_data*, %struct.vcap_data** %3, align 8
  %62 = getelementptr inbounds %struct.vcap_data, %struct.vcap_data* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %40
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %36

68:                                               ; preds = %36
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %6, align 4
  %71 = sub nsw i32 %69, %70
  %72 = sub nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vcap_is2, i32 0, i32 2), align 8
  %75 = mul nsw i32 %73, %74
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vcap_is2, i32 0, i32 1), align 4
  %77 = sdiv i32 %75, %76
  %78 = load %struct.vcap_data*, %struct.vcap_data** %3, align 8
  %79 = getelementptr inbounds %struct.vcap_data, %struct.vcap_data* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %6, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vcap_is2, i32 0, i32 3), align 4
  %84 = mul nsw i32 %82, %83
  %85 = load %struct.vcap_data*, %struct.vcap_data** %3, align 8
  %86 = getelementptr inbounds %struct.vcap_data, %struct.vcap_data* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.vcap_data*, %struct.vcap_data** %3, align 8
  %88 = getelementptr inbounds %struct.vcap_data, %struct.vcap_data* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %5, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vcap_is2, i32 0, i32 5), align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %11, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vcap_is2, i32 0, i32 5), align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %6, align 4
  %104 = mul nsw i32 %102, %103
  %105 = load i32, i32* %11, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load i32, i32* %8, align 4
  %108 = sdiv i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vcap_is2, i32 0, i32 4), align 8
  %111 = add nsw i64 %109, %110
  %112 = load %struct.vcap_data*, %struct.vcap_data** %3, align 8
  %113 = getelementptr inbounds %struct.vcap_data, %struct.vcap_data* %112, i32 0, i32 5
  store i64 %111, i64* %113, align 8
  ret void
}

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
