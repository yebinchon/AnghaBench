; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_mbus_io_win_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_mbus_io_win_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_port = type { i32 }

@MVNETA_BASE_ADDR_ENABLE = common dso_local global i32 0, align 4
@MVNETA_MAX_DECODE_WIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MVNETA_ACCESS_PROTECT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvneta_port*, i32, i32, i32, i32)* @mvneta_mbus_io_win_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvneta_mbus_io_win_set(%struct.mvneta_port* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mvneta_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mvneta_port* %0, %struct.mvneta_port** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.mvneta_port*, %struct.mvneta_port** %7, align 8
  %16 = load i32, i32* @MVNETA_BASE_ADDR_ENABLE, align 4
  %17 = call i32 @mvreg_read(%struct.mvneta_port* %15, i32 %16)
  store i32 %17, i32* %12, align 4
  %18 = load %struct.mvneta_port*, %struct.mvneta_port** %7, align 8
  %19 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %38, %22
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* @MVNETA_MAX_DECODE_WIN, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %14, align 4
  %30 = shl i32 1, %29
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* %14, align 4
  %35 = load %struct.mvneta_port*, %struct.mvneta_port** %7, align 8
  %36 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %41

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %14, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %14, align 4
  br label %23

41:                                               ; preds = %33, %23
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @MVNETA_MAX_DECODE_WIN, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %109

48:                                               ; preds = %41
  br label %53

49:                                               ; preds = %5
  %50 = load %struct.mvneta_port*, %struct.mvneta_port** %7, align 8
  %51 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %14, align 4
  br label %53

53:                                               ; preds = %49, %48
  %54 = load %struct.mvneta_port*, %struct.mvneta_port** %7, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @MVNETA_WIN_BASE(i32 %55)
  %57 = call i32 @mvreg_write(%struct.mvneta_port* %54, i32 %56, i32 0)
  %58 = load %struct.mvneta_port*, %struct.mvneta_port** %7, align 8
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @MVNETA_WIN_SIZE(i32 %59)
  %61 = call i32 @mvreg_write(%struct.mvneta_port* %58, i32 %60, i32 0)
  %62 = load i32, i32* %14, align 4
  %63 = icmp slt i32 %62, 4
  br i1 %63, label %64, label %69

64:                                               ; preds = %53
  %65 = load %struct.mvneta_port*, %struct.mvneta_port** %7, align 8
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @MVNETA_WIN_REMAP(i32 %66)
  %68 = call i32 @mvreg_write(%struct.mvneta_port* %65, i32 %67, i32 0)
  br label %69

69:                                               ; preds = %64, %53
  %70 = load %struct.mvneta_port*, %struct.mvneta_port** %7, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @MVNETA_WIN_BASE(i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = and i32 %73, -65536
  %75 = load i32, i32* %11, align 4
  %76 = shl i32 %75, 8
  %77 = or i32 %74, %76
  %78 = load i32, i32* %10, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @mvreg_write(%struct.mvneta_port* %70, i32 %72, i32 %79)
  %81 = load %struct.mvneta_port*, %struct.mvneta_port** %7, align 8
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @MVNETA_WIN_SIZE(i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = sub nsw i32 %84, 1
  %86 = and i32 %85, -65536
  %87 = call i32 @mvreg_write(%struct.mvneta_port* %81, i32 %83, i32 %86)
  %88 = load %struct.mvneta_port*, %struct.mvneta_port** %7, align 8
  %89 = load i32, i32* @MVNETA_ACCESS_PROTECT_ENABLE, align 4
  %90 = call i32 @mvreg_read(%struct.mvneta_port* %88, i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %14, align 4
  %92 = mul nsw i32 2, %91
  %93 = shl i32 3, %92
  %94 = load i32, i32* %13, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %13, align 4
  %96 = load %struct.mvneta_port*, %struct.mvneta_port** %7, align 8
  %97 = load i32, i32* @MVNETA_ACCESS_PROTECT_ENABLE, align 4
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @mvreg_write(%struct.mvneta_port* %96, i32 %97, i32 %98)
  %100 = load i32, i32* %14, align 4
  %101 = shl i32 1, %100
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %12, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %12, align 4
  %105 = load %struct.mvneta_port*, %struct.mvneta_port** %7, align 8
  %106 = load i32, i32* @MVNETA_BASE_ADDR_ENABLE, align 4
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @mvreg_write(%struct.mvneta_port* %105, i32 %106, i32 %107)
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %69, %45
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i32 @mvreg_read(%struct.mvneta_port*, i32) #1

declare dso_local i32 @mvreg_write(%struct.mvneta_port*, i32, i32) #1

declare dso_local i32 @MVNETA_WIN_BASE(i32) #1

declare dso_local i32 @MVNETA_WIN_SIZE(i32) #1

declare dso_local i32 @MVNETA_WIN_REMAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
