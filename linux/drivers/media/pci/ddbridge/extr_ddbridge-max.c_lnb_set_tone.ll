; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-max.c_lnb_set_tone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-max.c_lnb_set_tone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@LNB_CMD_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb*, i64, i64, i32)* @lnb_set_tone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lnb_set_tone(%struct.ddb* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ddb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ddb* %0, %struct.ddb** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i64, i64* %8, align 8
  %13 = shl i64 1, %12
  store i64 %13, i64* %11, align 8
  %14 = load i32, i32* %9, align 4
  switch i32 %14, label %66 [
    i32 129, label %15
    i32 128, label %41
  ]

15:                                               ; preds = %4
  %16 = load %struct.ddb*, %struct.ddb** %6, align 8
  %17 = getelementptr inbounds %struct.ddb, %struct.ddb* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %11, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %80

28:                                               ; preds = %15
  %29 = load i64, i64* %8, align 8
  %30 = shl i64 1, %29
  %31 = xor i64 %30, -1
  %32 = load %struct.ddb*, %struct.ddb** %6, align 8
  %33 = getelementptr inbounds %struct.ddb, %struct.ddb* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = and i64 %39, %31
  store i64 %40, i64* %38, align 8
  br label %69

41:                                               ; preds = %4
  %42 = load %struct.ddb*, %struct.ddb** %6, align 8
  %43 = getelementptr inbounds %struct.ddb, %struct.ddb* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %80

54:                                               ; preds = %41
  %55 = load i64, i64* %8, align 8
  %56 = shl i64 1, %55
  %57 = load %struct.ddb*, %struct.ddb** %6, align 8
  %58 = getelementptr inbounds %struct.ddb, %struct.ddb* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = or i64 %64, %56
  store i64 %65, i64* %63, align 8
  br label %69

66:                                               ; preds = %4
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %66, %54, %28
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %69
  %73 = load %struct.ddb*, %struct.ddb** %6, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i32, i32* @LNB_CMD_NOP, align 4
  %77 = call i32 @lnb_command(%struct.ddb* %73, i64 %74, i64 %75, i32 %76)
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %72, %69
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %78, %53, %27
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @lnb_command(%struct.ddb*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
