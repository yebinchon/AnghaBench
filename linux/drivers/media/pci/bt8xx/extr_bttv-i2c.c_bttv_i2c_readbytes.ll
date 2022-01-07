; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-i2c.c_bttv_i2c_readbytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-i2c.c_bttv_i2c_readbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32 }
%struct.i2c_msg = type { i32, i32, i32* }

@I2C_HW = common dso_local global i32 0, align 4
@BT848_I2C_W3B = common dso_local global i32 0, align 4
@BT878_I2C_NOSTOP = common dso_local global i32 0, align 4
@BT878_I2C_NOSTART = common dso_local global i32 0, align 4
@i2c_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c" <R %02x\00", align 1
@BT848_I2C = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c" =%02x\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" >\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c" ERR: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bttv*, %struct.i2c_msg*, i32)* @bttv_i2c_readbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_i2c_readbytes(%struct.bttv* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bttv*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %119, %3
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %122

17:                                               ; preds = %11
  %18 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 25
  %22 = or i32 %21, 16777216
  %23 = load i32, i32* @I2C_HW, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %17
  %32 = load i32, i32* @BT848_I2C_W3B, align 4
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %31, %17
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 1
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42, %35
  %46 = load i32, i32* @BT878_I2C_NOSTOP, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* @BT878_I2C_NOSTART, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i64, i64* @i2c_debug, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @BT878_I2C_NOSTART, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %59
  %65 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %66 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 1
  %69 = add nsw i32 %68, 1
  %70 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %64, %59
  br label %72

72:                                               ; preds = %71, %56
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @BT848_I2C, align 4
  %75 = call i32 @btwrite(i32 %73, i32 %74)
  %76 = load %struct.bttv*, %struct.bttv** %5, align 8
  %77 = call i32 @bttv_i2c_wait_done(%struct.bttv* %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %129

81:                                               ; preds = %72
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %126

85:                                               ; preds = %81
  %86 = load i32, i32* @BT848_I2C, align 4
  %87 = call i64 @btread(i32 %86)
  %88 = trunc i64 %87 to i32
  %89 = ashr i32 %88, 8
  %90 = and i32 %89, 255
  %91 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %92 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %90, i32* %96, align 4
  %97 = load i64, i64* @i2c_debug, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %85
  %100 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %101 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %99, %85
  %109 = load i64, i64* @i2c_debug, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @BT878_I2C_NOSTOP, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %111
  %117 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %111, %108
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %11

122:                                              ; preds = %11
  %123 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %124 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %4, align 4
  br label %137

126:                                              ; preds = %84
  %127 = load i32, i32* @EIO, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %126, %80
  %130 = load i64, i64* @i2c_debug, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32, i32* %10, align 4
  %134 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %132, %129
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %135, %122
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @btwrite(i32, i32) #1

declare dso_local i32 @bttv_i2c_wait_done(%struct.bttv*) #1

declare dso_local i64 @btread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
