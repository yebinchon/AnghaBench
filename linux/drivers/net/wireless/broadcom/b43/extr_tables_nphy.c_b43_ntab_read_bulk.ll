; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables_nphy.c_b43_ntab_read_bulk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables_nphy.c_b43_ntab_read_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@B43_NTAB_TYPEMASK = common dso_local global i32 0, align 4
@B43_NPHY_TABLE_ADDR = common dso_local global i32 0, align 4
@B43_NPHY_TABLE_DATALO = common dso_local global i32 0, align 4
@B43_NPHY_TABLE_DATAHI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_ntab_read_bulk(%struct.b43_wldev* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %10, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @B43_NTAB_TYPEMASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @B43_NTAB_TYPEMASK, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %21, 65535
  %23 = zext i1 %22 to i32
  %24 = call i32 @B43_WARN_ON(i32 %23)
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %26 = load i32, i32* @B43_NPHY_TABLE_ADDR, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @b43_phy_write(%struct.b43_wldev* %25, i32 %26, i32 %27)
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %91, %4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %94

33:                                               ; preds = %29
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %35 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 43224
  br i1 %39, label %40, label %57

40:                                               ; preds = %33
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %42 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %57

47:                                               ; preds = %40
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %49 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %50 = call i32 @b43_phy_read(%struct.b43_wldev* %48, i32 %49)
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %52 = load i32, i32* @B43_NPHY_TABLE_ADDR, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %11, align 4
  %55 = add i32 %53, %54
  %56 = call i32 @b43_phy_write(%struct.b43_wldev* %51, i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %47, %40, %33
  %58 = load i32, i32* %9, align 4
  switch i32 %58, label %88 [
    i32 128, label %59
    i32 130, label %67
    i32 129, label %74
  ]

59:                                               ; preds = %57
  %60 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %61 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %62 = call i32 @b43_phy_read(%struct.b43_wldev* %60, i32 %61)
  %63 = and i32 %62, 255
  %64 = load i32*, i32** %10, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %10, align 8
  br label %90

67:                                               ; preds = %57
  %68 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %69 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %70 = call i32 @b43_phy_read(%struct.b43_wldev* %68, i32 %69)
  %71 = load i32*, i32** %10, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  store i32* %73, i32** %10, align 8
  br label %90

74:                                               ; preds = %57
  %75 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %76 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %77 = call i32 @b43_phy_read(%struct.b43_wldev* %75, i32 %76)
  %78 = load i32*, i32** %10, align 8
  store i32 %77, i32* %78, align 4
  %79 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %80 = load i32, i32* @B43_NPHY_TABLE_DATAHI, align 4
  %81 = call i32 @b43_phy_read(%struct.b43_wldev* %79, i32 %80)
  %82 = shl i32 %81, 16
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %82
  store i32 %85, i32* %83, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  store i32* %87, i32** %10, align 8
  br label %90

88:                                               ; preds = %57
  %89 = call i32 @B43_WARN_ON(i32 1)
  br label %90

90:                                               ; preds = %88, %74, %67, %59
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %11, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %29

94:                                               ; preds = %29
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
