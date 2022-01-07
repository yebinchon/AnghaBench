; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_calc_again.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_calc_again.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apds990x_chip = type { i32, i32, i32, i32, i32, i32, i32 }

@APDS_LUX_GAIN_LO_LIMIT_STRICT = common dso_local global i32 0, align 4
@APDS_LUX_GAIN_LO_LIMIT = common dso_local global i32 0, align 4
@APDS990X_MAX_AGAIN = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@APDS990X_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apds990x_chip*)* @apds990x_calc_again to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds990x_calc_again(%struct.apds990x_chip* %0) #0 {
  %2 = alloca %struct.apds990x_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.apds990x_chip* %0, %struct.apds990x_chip** %2, align 8
  %6 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %7 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %10 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %13 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %16 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = sub nsw i32 %20, 2
  store i32 %21, i32* %4, align 4
  br label %55

22:                                               ; preds = %1
  %23 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %24 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %27 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = sdiv i32 %28, 2
  %30 = icmp sgt i32 %25, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %4, align 4
  br label %54

34:                                               ; preds = %22
  %35 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %36 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @APDS_LUX_GAIN_LO_LIMIT_STRICT, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 2
  store i32 %42, i32* %4, align 4
  br label %53

43:                                               ; preds = %34
  %44 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %45 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @APDS_LUX_GAIN_LO_LIMIT, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %43
  br label %53

53:                                               ; preds = %52, %40
  br label %54

54:                                               ; preds = %53, %31
  br label %55

55:                                               ; preds = %54, %19
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %66

59:                                               ; preds = %55
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @APDS990X_MAX_AGAIN, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @APDS990X_MAX_AGAIN, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %59
  br label %66

66:                                               ; preds = %65, %58
  %67 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %68 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %71 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32, i32* @ERANGE, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %91

77:                                               ; preds = %66
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %3, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %83 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @APDS_LUX_GAIN_LO_LIMIT_STRICT, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* @ERANGE, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %87, %81, %77
  br label %91

91:                                               ; preds = %90, %74
  %92 = load i32, i32* %4, align 4
  %93 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %94 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %96 = load i32, i32* @APDS990X_CONTROL, align 4
  %97 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %98 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 %99, 6
  %101 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %102 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 4
  %105 = or i32 %100, %104
  %106 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %107 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 2
  %110 = or i32 %105, %109
  %111 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %112 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 0
  %115 = or i32 %110, %114
  %116 = call i32 @apds990x_write_byte(%struct.apds990x_chip* %95, i32 %96, i32 %115)
  %117 = load i32, i32* %5, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %91
  %120 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %121 = call i32 @apds990x_force_a_refresh(%struct.apds990x_chip* %120)
  br label %125

122:                                              ; preds = %91
  %123 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %124 = call i32 @apds990x_refresh_athres(%struct.apds990x_chip* %123)
  br label %125

125:                                              ; preds = %122, %119
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @apds990x_write_byte(%struct.apds990x_chip*, i32, i32) #1

declare dso_local i32 @apds990x_force_a_refresh(%struct.apds990x_chip*) #1

declare dso_local i32 @apds990x_refresh_athres(%struct.apds990x_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
