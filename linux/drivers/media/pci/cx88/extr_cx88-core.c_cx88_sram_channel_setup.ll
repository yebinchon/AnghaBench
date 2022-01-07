; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-core.c_cx88_sram_channel_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-core.c_cx88_sram_channel_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32 }
%struct.sram_channel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"sram setup %s: bpl=%d lines=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx88_sram_channel_setup(%struct.cx88_core* %0, %struct.sram_channel* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cx88_core*, align 8
  %6 = alloca %struct.sram_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cx88_core* %0, %struct.cx88_core** %5, align 8
  store %struct.sram_channel* %1, %struct.sram_channel** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = add i32 %12, 7
  %14 = and i32 %13, -8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.sram_channel*, %struct.sram_channel** %6, align 8
  %16 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.sram_channel*, %struct.sram_channel** %6, align 8
  %19 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = udiv i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ugt i32 %23, 6
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 6, i32* %10, align 4
  br label %26

26:                                               ; preds = %25, %4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ult i32 %27, 2
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %48, %26
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = mul i32 16, %37
  %39 = add i32 %36, %38
  %40 = load %struct.sram_channel*, %struct.sram_channel** %6, align 8
  %41 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %9, align 4
  %45 = mul i32 %43, %44
  %46 = add i32 %42, %45
  %47 = call i32 @cx_write(i32 %39, i32 %46)
  br label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %9, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %31

51:                                               ; preds = %31
  %52 = load %struct.sram_channel*, %struct.sram_channel** %6, align 8
  %53 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 0
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @cx_write(i32 %55, i32 %56)
  %58 = load %struct.sram_channel*, %struct.sram_channel** %6, align 8
  %59 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @cx_write(i32 %61, i32 %62)
  %64 = load %struct.sram_channel*, %struct.sram_channel** %6, align 8
  %65 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 8
  %68 = load i32, i32* %10, align 4
  %69 = mul i32 %68, 16
  %70 = lshr i32 %69, 3
  %71 = call i32 @cx_write(i32 %67, i32 %70)
  %72 = load %struct.sram_channel*, %struct.sram_channel** %6, align 8
  %73 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 12
  %76 = load %struct.sram_channel*, %struct.sram_channel** %6, align 8
  %77 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @cx_write(i32 %75, i32 %78)
  %80 = load %struct.sram_channel*, %struct.sram_channel** %6, align 8
  %81 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 16
  %84 = call i32 @cx_write(i32 %83, i32 16)
  store i32 20, i32* %9, align 4
  br label %85

85:                                               ; preds = %95, %51
  %86 = load i32, i32* %9, align 4
  %87 = icmp ult i32 %86, 64
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load %struct.sram_channel*, %struct.sram_channel** %6, align 8
  %90 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %9, align 4
  %93 = add i32 %91, %92
  %94 = call i32 @cx_write(i32 %93, i32 0)
  br label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %9, align 4
  %97 = add i32 %96, 4
  store i32 %97, i32* %9, align 4
  br label %85

98:                                               ; preds = %85
  %99 = load %struct.sram_channel*, %struct.sram_channel** %6, align 8
  %100 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.sram_channel*, %struct.sram_channel** %6, align 8
  %103 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @cx_write(i32 %101, i32 %104)
  %106 = load %struct.sram_channel*, %struct.sram_channel** %6, align 8
  %107 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @cx_write(i32 %108, i32 %109)
  %111 = load %struct.sram_channel*, %struct.sram_channel** %6, align 8
  %112 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %7, align 4
  %115 = lshr i32 %114, 3
  %116 = sub i32 %115, 1
  %117 = call i32 @cx_write(i32 %113, i32 %116)
  %118 = load %struct.sram_channel*, %struct.sram_channel** %6, align 8
  %119 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %118, i32 0, i32 8
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %10, align 4
  %122 = mul i32 %121, 16
  %123 = lshr i32 %122, 3
  %124 = call i32 @cx_write(i32 %120, i32 %123)
  %125 = load %struct.sram_channel*, %struct.sram_channel** %6, align 8
  %126 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %125, i32 0, i32 9
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %127, i32 %128, i32 %129)
  ret i32 0
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
