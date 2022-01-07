; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_mc5.c_init_mask_data_array.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_mc5.c_init_mask_data_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc5 = type { i32, i64, %struct.adapter* }
%struct.adapter = type { i32 }

@A_MC5_DB_SERVER_INDEX = common dso_local global i32 0, align 4
@MC5_MODE_144_BIT = common dso_local global i64 0, align 8
@A_MC5_DB_DBGI_REQ_DATA0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mc5*, i64, i64, i64, i32)* @init_mask_data_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_mask_data_array(%struct.mc5* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mc5*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.adapter*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mc5* %0, %struct.mc5** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.mc5*, %struct.mc5** %7, align 8
  %17 = getelementptr inbounds %struct.mc5, %struct.mc5* %16, i32 0, i32 2
  %18 = load %struct.adapter*, %struct.adapter** %17, align 8
  store %struct.adapter* %18, %struct.adapter** %13, align 8
  %19 = load %struct.mc5*, %struct.mc5** %7, align 8
  %20 = getelementptr inbounds %struct.mc5, %struct.mc5* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %14, align 4
  %22 = load %struct.adapter*, %struct.adapter** %13, align 8
  %23 = load i32, i32* @A_MC5_DB_SERVER_INDEX, align 4
  %24 = call i32 @t3_read_reg(%struct.adapter* %22, i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = load %struct.mc5*, %struct.mc5** %7, align 8
  %26 = getelementptr inbounds %struct.mc5, %struct.mc5* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MC5_MODE_144_BIT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %5
  %31 = load i32, i32* %14, align 4
  %32 = mul i32 %31, 2
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %15, align 4
  %34 = mul i32 %33, 2
  store i32 %34, i32* %15, align 4
  br label %35

35:                                               ; preds = %30, %5
  %36 = load %struct.adapter*, %struct.adapter** %13, align 8
  %37 = call i32 @dbgi_wr_data3(%struct.adapter* %36, i32 0, i32 0, i32 0)
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %55, %35
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = load %struct.adapter*, %struct.adapter** %13, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %11, align 4
  %47 = shl i32 %45, %46
  %48 = zext i32 %47 to i64
  %49 = add nsw i64 %44, %48
  %50 = load i64, i64* %10, align 8
  %51 = call i64 @mc5_write(%struct.adapter* %43, i64 %49, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  store i32 -1, i32* %6, align 4
  br label %97

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %12, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %38

58:                                               ; preds = %38
  %59 = load %struct.adapter*, %struct.adapter** %13, align 8
  %60 = call i32 @dbgi_wr_data3(%struct.adapter* %59, i32 -1, i32 -1, i32 255)
  store i32 0, i32* %12, align 4
  br label %61

61:                                               ; preds = %93, %58
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %96

65:                                               ; preds = %61
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load %struct.adapter*, %struct.adapter** %13, align 8
  %71 = load i32, i32* @A_MC5_DB_DBGI_REQ_DATA0, align 4
  %72 = load %struct.mc5*, %struct.mc5** %7, align 8
  %73 = getelementptr inbounds %struct.mc5, %struct.mc5* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @MC5_MODE_144_BIT, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 -7, i32 -3
  %79 = call i32 @t3_write_reg(%struct.adapter* %70, i32 %71, i32 %78)
  br label %80

80:                                               ; preds = %69, %65
  %81 = load %struct.adapter*, %struct.adapter** %13, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %11, align 4
  %85 = shl i32 %83, %84
  %86 = zext i32 %85 to i64
  %87 = add nsw i64 %82, %86
  %88 = load i64, i64* %10, align 8
  %89 = call i64 @mc5_write(%struct.adapter* %81, i64 %87, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  store i32 -1, i32* %6, align 4
  br label %97

92:                                               ; preds = %80
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %12, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %61

96:                                               ; preds = %61
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %96, %91, %53
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @t3_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @dbgi_wr_data3(%struct.adapter*, i32, i32, i32) #1

declare dso_local i64 @mc5_write(%struct.adapter*, i64, i64) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
