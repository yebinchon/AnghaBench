; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32* }
%struct.pt1 = type { i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @pt1_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt1_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pt1*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_msg*, align 8
  %11 = alloca %struct.i2c_msg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %17 = call %struct.pt1* @i2c_get_adapdata(%struct.i2c_adapter* %16)
  store %struct.pt1* %17, %struct.pt1** %8, align 8
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %121, %3
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %124

22:                                               ; preds = %18
  %23 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i64 %25
  store %struct.i2c_msg* %26, %struct.i2c_msg** %10, align 8
  %27 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @I2C_M_RD, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i32, i32* @ENOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %126

36:                                               ; preds = %22
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i64 %45
  store %struct.i2c_msg* %46, %struct.i2c_msg** %11, align 8
  br label %48

47:                                               ; preds = %36
  store %struct.i2c_msg* null, %struct.i2c_msg** %11, align 8
  br label %48

48:                                               ; preds = %47, %41
  %49 = load %struct.i2c_msg*, %struct.i2c_msg** %11, align 8
  %50 = icmp ne %struct.i2c_msg* %49, null
  br i1 %50, label %51, label %105

51:                                               ; preds = %48
  %52 = load %struct.i2c_msg*, %struct.i2c_msg** %11, align 8
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @I2C_M_RD, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %105

58:                                               ; preds = %51
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  %61 = load %struct.i2c_msg*, %struct.i2c_msg** %11, align 8
  %62 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp sgt i32 %64, 4
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i32, i32* @ENOTSUPP, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %126

69:                                               ; preds = %58
  %70 = load %struct.pt1*, %struct.pt1** %8, align 8
  %71 = call i32 @pt1_i2c_begin(%struct.pt1* %70, i32* %12)
  %72 = load %struct.pt1*, %struct.pt1** %8, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %75 = call i32 @pt1_i2c_write_msg(%struct.pt1* %72, i32 %73, i32* %12, %struct.i2c_msg* %74)
  %76 = load %struct.pt1*, %struct.pt1** %8, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.i2c_msg*, %struct.i2c_msg** %11, align 8
  %79 = call i32 @pt1_i2c_read_msg(%struct.pt1* %76, i32 %77, i32* %12, %struct.i2c_msg* %78)
  %80 = load %struct.pt1*, %struct.pt1** %8, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @pt1_i2c_end(%struct.pt1* %80, i32 %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %69
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %4, align 4
  br label %126

87:                                               ; preds = %69
  %88 = load %struct.pt1*, %struct.pt1** %8, align 8
  %89 = call i32 @pt1_read_reg(%struct.pt1* %88, i32 2)
  store i32 %89, i32* %15, align 4
  br label %90

90:                                               ; preds = %94, %87
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %14, align 4
  %93 = icmp ne i32 %91, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %90
  %95 = load i32, i32* %15, align 4
  %96 = load %struct.i2c_msg*, %struct.i2c_msg** %11, align 8
  %97 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %95, i32* %101, align 4
  %102 = load i32, i32* %15, align 4
  %103 = ashr i32 %102, 8
  store i32 %103, i32* %15, align 4
  br label %90

104:                                              ; preds = %90
  br label %120

105:                                              ; preds = %51, %48
  %106 = load %struct.pt1*, %struct.pt1** %8, align 8
  %107 = call i32 @pt1_i2c_begin(%struct.pt1* %106, i32* %12)
  %108 = load %struct.pt1*, %struct.pt1** %8, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %111 = call i32 @pt1_i2c_write_msg(%struct.pt1* %108, i32 %109, i32* %12, %struct.i2c_msg* %110)
  %112 = load %struct.pt1*, %struct.pt1** %8, align 8
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @pt1_i2c_end(%struct.pt1* %112, i32 %113)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %105
  %118 = load i32, i32* %13, align 4
  store i32 %118, i32* %4, align 4
  br label %126

119:                                              ; preds = %105
  br label %120

120:                                              ; preds = %119, %104
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %18

124:                                              ; preds = %18
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %124, %117, %85, %66, %33
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local %struct.pt1* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @pt1_i2c_begin(%struct.pt1*, i32*) #1

declare dso_local i32 @pt1_i2c_write_msg(%struct.pt1*, i32, i32*, %struct.i2c_msg*) #1

declare dso_local i32 @pt1_i2c_read_msg(%struct.pt1*, i32, i32*, %struct.i2c_msg*) #1

declare dso_local i32 @pt1_i2c_end(%struct.pt1*, i32) #1

declare dso_local i32 @pt1_read_reg(%struct.pt1*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
