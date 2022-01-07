; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_hdcs.c_hdcs_set_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_hdcs.c_hdcs_set_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.hdcs* }
%struct.hdcs = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@HDCS_1020_BOTTOM_Y_SKIP = common dso_local global i32 0, align 4
@HDCS_FWROW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*, i32, i32)* @hdcs_set_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdcs_set_size(%struct.sd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hdcs*, align 8
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.sd*, %struct.sd** %5, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 0
  %15 = load %struct.hdcs*, %struct.hdcs** %14, align 8
  store %struct.hdcs* %15, %struct.hdcs** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = add i32 %16, 3
  %18 = and i32 %17, -4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add i32 %19, 3
  %21 = and i32 %20, -4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.hdcs*, %struct.hdcs** %8, align 8
  %24 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ugt i32 %22, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load %struct.hdcs*, %struct.hdcs** %8, align 8
  %30 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %28, %3
  %34 = load %struct.sd*, %struct.sd** %5, align 8
  %35 = call i64 @IS_1020(%struct.sd* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %80

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.hdcs*, %struct.hdcs** %8, align 8
  %40 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 2, %42
  %44 = add i32 %38, %43
  %45 = load i32, i32* @HDCS_1020_BOTTOM_Y_SKIP, align 4
  %46 = add i32 %44, %45
  %47 = load %struct.hdcs*, %struct.hdcs** %8, align 8
  %48 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp ugt i32 %46, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %37
  %53 = load %struct.hdcs*, %struct.hdcs** %8, align 8
  %54 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.hdcs*, %struct.hdcs** %8, align 8
  %58 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 2, %60
  %62 = sub i32 %56, %61
  %63 = load i32, i32* @HDCS_1020_BOTTOM_Y_SKIP, align 4
  %64 = sub i32 %62, %63
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %52, %37
  %66 = load %struct.hdcs*, %struct.hdcs** %8, align 8
  %67 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @HDCS_1020_BOTTOM_Y_SKIP, align 4
  %71 = sub i32 %69, %70
  %72 = load i32, i32* %7, align 4
  %73 = sub i32 %71, %72
  %74 = udiv i32 %73, 2
  %75 = load %struct.hdcs*, %struct.hdcs** %8, align 8
  %76 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = add i32 %74, %78
  store i32 %79, i32* %11, align 4
  br label %105

80:                                               ; preds = %33
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.hdcs*, %struct.hdcs** %8, align 8
  %83 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = icmp ugt i32 %81, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load %struct.hdcs*, %struct.hdcs** %8, align 8
  %89 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %87, %80
  %93 = load %struct.hdcs*, %struct.hdcs** %8, align 8
  %94 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.hdcs*, %struct.hdcs** %8, align 8
  %98 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %7, align 4
  %102 = sub i32 %100, %101
  %103 = udiv i32 %102, 2
  %104 = add i32 %96, %103
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %92, %65
  %106 = load %struct.hdcs*, %struct.hdcs** %8, align 8
  %107 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.hdcs*, %struct.hdcs** %8, align 8
  %111 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %6, align 4
  %115 = sub i32 %113, %114
  %116 = udiv i32 %115, 2
  %117 = add i32 %109, %116
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %11, align 4
  %119 = udiv i32 %118, 4
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %119, i32* %120, align 16
  %121 = load i32, i32* %10, align 4
  %122 = udiv i32 %121, 4
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %122, i32* %123, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %7, align 4
  %126 = add i32 %124, %125
  %127 = udiv i32 %126, 4
  %128 = sub i32 %127, 1
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 %128, i32* %129, align 8
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %6, align 4
  %132 = add i32 %130, %131
  %133 = udiv i32 %132, 4
  %134 = sub i32 %133, 1
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %134, i32* %135, align 4
  %136 = load %struct.sd*, %struct.sd** %5, align 8
  %137 = load i32, i32* @HDCS_FWROW, align 4
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %139 = call i32 @hdcs_reg_write_seq(%struct.sd* %136, i32 %137, i32* %138, i32 4)
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %105
  %143 = load i32, i32* %12, align 4
  store i32 %143, i32* %4, align 4
  br label %152

144:                                              ; preds = %105
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.hdcs*, %struct.hdcs** %8, align 8
  %147 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* %7, align 4
  %149 = load %struct.hdcs*, %struct.hdcs** %8, align 8
  %150 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* %12, align 4
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %144, %142
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i64 @IS_1020(%struct.sd*) #1

declare dso_local i32 @hdcs_reg_write_seq(%struct.sd*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
