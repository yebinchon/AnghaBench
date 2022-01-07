; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_get_perm_macaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_get_perm_macaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_hw = type { i32 }

@ALX_SLD = common dso_local global i32 0, align 4
@ALX_SLD_STAT = common dso_local global i32 0, align 4
@ALX_SLD_START = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ALX_EFLD = common dso_local global i32 0, align 4
@ALX_EFLD_F_EXIST = common dso_local global i32 0, align 4
@ALX_EFLD_E_EXIST = common dso_local global i32 0, align 4
@ALX_EFLD_STAT = common dso_local global i32 0, align 4
@ALX_EFLD_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @alx_get_perm_macaddr(%struct.alx_hw* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.alx_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.alx_hw* %0, %struct.alx_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i64 @alx_read_macaddr(%struct.alx_hw* %7, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %90

12:                                               ; preds = %2
  %13 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %14 = load i32, i32* @ALX_SLD, align 4
  %15 = load i32, i32* @ALX_SLD_STAT, align 4
  %16 = load i32, i32* @ALX_SLD_START, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @alx_wait_reg(%struct.alx_hw* %13, i32 %14, i32 %17, i32* %6)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %12
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %90

23:                                               ; preds = %12
  %24 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %25 = load i32, i32* @ALX_SLD, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @ALX_SLD_START, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @alx_write_mem32(%struct.alx_hw* %24, i32 %25, i32 %28)
  %30 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %31 = load i32, i32* @ALX_SLD, align 4
  %32 = load i32, i32* @ALX_SLD_START, align 4
  %33 = call i32 @alx_wait_reg(%struct.alx_hw* %30, i32 %31, i32 %32, i32* null)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %23
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %90

38:                                               ; preds = %23
  %39 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i64 @alx_read_macaddr(%struct.alx_hw* %39, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %90

44:                                               ; preds = %38
  %45 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %46 = load i32, i32* @ALX_EFLD, align 4
  %47 = call i32 @alx_read_mem32(%struct.alx_hw* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @ALX_EFLD_F_EXIST, align 4
  %50 = load i32, i32* @ALX_EFLD_E_EXIST, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %87

54:                                               ; preds = %44
  %55 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %56 = load i32, i32* @ALX_EFLD, align 4
  %57 = load i32, i32* @ALX_EFLD_STAT, align 4
  %58 = load i32, i32* @ALX_EFLD_START, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @alx_wait_reg(%struct.alx_hw* %55, i32 %56, i32 %59, i32* %6)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %90

65:                                               ; preds = %54
  %66 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %67 = load i32, i32* @ALX_EFLD, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @ALX_EFLD_START, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @alx_write_mem32(%struct.alx_hw* %66, i32 %67, i32 %70)
  %72 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %73 = load i32, i32* @ALX_EFLD, align 4
  %74 = load i32, i32* @ALX_EFLD_START, align 4
  %75 = call i32 @alx_wait_reg(%struct.alx_hw* %72, i32 %73, i32 %74, i32* null)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %65
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %90

80:                                               ; preds = %65
  %81 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = call i64 @alx_read_macaddr(%struct.alx_hw* %81, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %90

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86, %44
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %87, %85, %77, %62, %43, %35, %20, %11
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i64 @alx_read_macaddr(%struct.alx_hw*, i32*) #1

declare dso_local i32 @alx_wait_reg(%struct.alx_hw*, i32, i32, i32*) #1

declare dso_local i32 @alx_write_mem32(%struct.alx_hw*, i32, i32) #1

declare dso_local i32 @alx_read_mem32(%struct.alx_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
