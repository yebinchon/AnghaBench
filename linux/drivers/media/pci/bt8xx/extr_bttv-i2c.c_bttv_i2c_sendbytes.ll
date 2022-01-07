; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-i2c.c_bttv_i2c_sendbytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-i2c.c_bttv_i2c_sendbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32 }
%struct.i2c_msg = type { i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@I2C_HW = common dso_local global i32 0, align 4
@BT878_I2C_NOSTOP = common dso_local global i32 0, align 4
@BT848_I2C = common dso_local global i32 0, align 4
@i2c_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c" <W %02x %02x\00", align 1
@BT878_I2C_NOSTART = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c" ERR: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bttv*, %struct.i2c_msg*, i32)* @bttv_i2c_sendbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_i2c_sendbytes(%struct.bttv* %0, %struct.i2c_msg* %1, i32 %2) #0 {
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
  %11 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 0, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %157

18:                                               ; preds = %3
  %19 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 25
  %23 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 16
  %29 = or i32 %22, %28
  %30 = load i32, i32* @I2C_HW, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %39, label %36

36:                                               ; preds = %18
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36, %18
  %40 = load i32, i32* @BT878_I2C_NOSTOP, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @BT848_I2C, align 4
  %46 = call i32 @btwrite(i32 %44, i32 %45)
  %47 = load %struct.bttv*, %struct.bttv** %5, align 8
  %48 = call i32 @bttv_i2c_wait_done(%struct.bttv* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %149

52:                                               ; preds = %43
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %146

56:                                               ; preds = %52
  %57 = load i64, i64* @i2c_debug, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 1
  %64 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %68)
  br label %70

70:                                               ; preds = %59, %56
  store i32 1, i32* %10, align 4
  br label %71

71:                                               ; preds = %129, %70
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %74 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %132

77:                                               ; preds = %71
  %78 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %79 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 24
  %86 = load i32, i32* @I2C_HW, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @BT878_I2C_NOSTART, align 4
  %89 = or i32 %87, %88
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %92 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %93, 1
  %95 = icmp slt i32 %90, %94
  br i1 %95, label %99, label %96

96:                                               ; preds = %77
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %96, %77
  %100 = load i32, i32* @BT878_I2C_NOSTOP, align 4
  %101 = load i32, i32* %8, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %99, %96
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @BT848_I2C, align 4
  %106 = call i32 @btwrite(i32 %104, i32 %105)
  %107 = load %struct.bttv*, %struct.bttv** %5, align 8
  %108 = call i32 @bttv_i2c_wait_done(%struct.bttv* %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %149

112:                                              ; preds = %103
  %113 = load i32, i32* %9, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %146

116:                                              ; preds = %112
  %117 = load i64, i64* @i2c_debug, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %116
  %120 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %121 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %119, %116
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  br label %71

132:                                              ; preds = %71
  %133 = load i64, i64* @i2c_debug, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @BT878_I2C_NOSTOP, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %135
  %141 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %135, %132
  %143 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %144 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  store i32 %145, i32* %4, align 4
  br label %157

146:                                              ; preds = %115, %55
  %147 = load i32, i32* @EIO, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %9, align 4
  br label %149

149:                                              ; preds = %146, %111, %51
  %150 = load i64, i64* @i2c_debug, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32, i32* %9, align 4
  %154 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i32, i32* %9, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %155, %142, %15
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32 @btwrite(i32, i32) #1

declare dso_local i32 @bttv_i2c_wait_done(%struct.bttv*) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
