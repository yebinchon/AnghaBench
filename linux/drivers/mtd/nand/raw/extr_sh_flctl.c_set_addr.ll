; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sh_flctl.c_set_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sh_flctl.c_set_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.sh_flctl = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@ADRCNT2_E = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32)* @set_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_addr(%struct.mtd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sh_flctl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %11 = call %struct.sh_flctl* @mtd_to_flctl(%struct.mtd_info* %10)
  store %struct.sh_flctl* %11, %struct.sh_flctl** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %8, align 4
  br label %84

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %83

19:                                               ; preds = %16
  %20 = load %struct.sh_flctl*, %struct.sh_flctl** %7, align 8
  %21 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %27, %19
  %31 = load %struct.sh_flctl*, %struct.sh_flctl** %7, align 8
  %32 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 4095
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 255
  %40 = shl i32 %39, 16
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = ashr i32 %43, 8
  %45 = and i32 %44, 255
  %46 = shl i32 %45, 24
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load %struct.sh_flctl*, %struct.sh_flctl** %7, align 8
  %50 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ADRCNT2_E, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %35
  %55 = load i32, i32* %6, align 4
  %56 = ashr i32 %55, 16
  %57 = and i32 %56, 255
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.sh_flctl*, %struct.sh_flctl** %7, align 8
  %60 = call i32 @FLADR2(%struct.sh_flctl* %59)
  %61 = call i32 @writel(i32 %58, i32 %60)
  br label %62

62:                                               ; preds = %54, %35
  br label %82

63:                                               ; preds = %30
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, 255
  %67 = shl i32 %66, 8
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %6, align 4
  %71 = ashr i32 %70, 8
  %72 = and i32 %71, 255
  %73 = shl i32 %72, 16
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %6, align 4
  %77 = ashr i32 %76, 16
  %78 = and i32 %77, 255
  %79 = shl i32 %78, 24
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %63, %62
  br label %83

83:                                               ; preds = %82, %16
  br label %84

84:                                               ; preds = %83, %14
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.sh_flctl*, %struct.sh_flctl** %7, align 8
  %87 = call i32 @FLADR(%struct.sh_flctl* %86)
  %88 = call i32 @writel(i32 %85, i32 %87)
  ret void
}

declare dso_local %struct.sh_flctl* @mtd_to_flctl(%struct.mtd_info*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @FLADR2(%struct.sh_flctl*) #1

declare dso_local i32 @FLADR(%struct.sh_flctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
