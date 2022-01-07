; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_write_flash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_write_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SF_PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SF_PROG_PAGE = common dso_local global i32 0, align 4
@SF_WR_ENABLE = common dso_local global i32 0, align 4
@SF_OP_A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"failed to correctly write the flash page at %#x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i32, i32*)* @t4_write_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4_write_flash(%struct.adapter* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [64 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 255
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.adapter*, %struct.adapter** %6, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp uge i32 %19, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* %16, align 4
  %27 = load i32, i32* %8, align 4
  %28 = add i32 %26, %27
  %29 = load i32, i32* @SF_PAGE_SIZE, align 4
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %136

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @swab32(i32 %35)
  %37 = load i32, i32* @SF_PROG_PAGE, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %15, align 4
  %39 = load %struct.adapter*, %struct.adapter** %6, align 8
  %40 = load i32, i32* @SF_WR_ENABLE, align 4
  %41 = call i32 @sf1_write(%struct.adapter* %39, i32 1, i32 0, i32 1, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %34
  %44 = load %struct.adapter*, %struct.adapter** %6, align 8
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @sf1_write(%struct.adapter* %44, i32 4, i32 1, i32 1, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %34
  br label %131

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %14, align 4
  br label %51

51:                                               ; preds = %84, %49
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %88

54:                                               ; preds = %51
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @min(i32 %55, i32 4)
  store i32 %56, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %68, %54
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load i32, i32* %15, align 4
  %63 = shl i32 %62, 8
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %9, align 8
  %66 = load i32, i32* %64, align 4
  %67 = add i32 %63, %66
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %12, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %57

71:                                               ; preds = %57
  %72 = load %struct.adapter*, %struct.adapter** %6, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @sf1_write(%struct.adapter* %72, i32 %73, i32 %77, i32 1, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  br label %131

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %14, align 4
  %87 = sub i32 %86, %85
  store i32 %87, i32* %14, align 4
  br label %51

88:                                               ; preds = %51
  %89 = load %struct.adapter*, %struct.adapter** %6, align 8
  %90 = call i32 @flash_wait_op(%struct.adapter* %89, i32 8, i32 1)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %131

94:                                               ; preds = %88
  %95 = load %struct.adapter*, %struct.adapter** %6, align 8
  %96 = load i32, i32* @SF_OP_A, align 4
  %97 = call i32 @t4_write_reg(%struct.adapter* %95, i32 %96, i32 0)
  %98 = load %struct.adapter*, %struct.adapter** %6, align 8
  %99 = load i32, i32* %7, align 4
  %100 = and i32 %99, -256
  %101 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %102 = call i32 @ARRAY_SIZE(i32* %101)
  %103 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %104 = call i32 @t4_read_flash(%struct.adapter* %98, i32 %100, i32 %102, i32* %103, i32 1)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %94
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %5, align 4
  br label %136

109:                                              ; preds = %94
  %110 = load i32*, i32** %9, align 8
  %111 = load i32, i32* %8, align 4
  %112 = zext i32 %111 to i64
  %113 = sub i64 0, %112
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %116 = load i32, i32* %16, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %8, align 4
  %120 = call i64 @memcmp(i32* %114, i32* %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %109
  %123 = load %struct.adapter*, %struct.adapter** %6, align 8
  %124 = getelementptr inbounds %struct.adapter, %struct.adapter* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @dev_err(i32 %125, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* @EIO, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %5, align 4
  br label %136

130:                                              ; preds = %109
  store i32 0, i32* %5, align 4
  br label %136

131:                                              ; preds = %93, %82, %48
  %132 = load %struct.adapter*, %struct.adapter** %6, align 8
  %133 = load i32, i32* @SF_OP_A, align 4
  %134 = call i32 @t4_write_reg(%struct.adapter* %132, i32 %133, i32 0)
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %131, %130, %122, %107, %31
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @sf1_write(%struct.adapter*, i32, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @flash_wait_op(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t4_read_flash(%struct.adapter*, i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
