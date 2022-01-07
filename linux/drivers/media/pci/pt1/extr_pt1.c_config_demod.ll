; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_config_demod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_config_demod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_msg = type { i32, i32*, i64, i32 }

@TC90522_I2C_DEV_SAT = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@PT1_FE_CLK_20MHZ = common dso_local global i32 0, align 4
@va1j5jf8007s_20mhz_configs = common dso_local global i32** null, align 8
@va1j5jf8007t_20mhz_configs = common dso_local global i32** null, align 8
@va1j5jf8007s_25mhz_configs = common dso_local global i32** null, align 8
@va1j5jf8007t_25mhz_configs = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @config_demod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_demod(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32]*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x %struct.i2c_msg], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TC90522_I2C_DEV_SAT, align 4
  %18 = load i32, i32* @TC90522_I2C_DEV_SAT, align 4
  %19 = call i32 @strlen(i32 %18)
  %20 = call i32 @strncmp(i32 %16, i32 %17, i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %66

26:                                               ; preds = %2
  store i32 7, i32* %12, align 4
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i32 0, i32 2
  store i64 0, i64* %33, align 16
  %34 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 0
  store i32 1, i32* %35, align 16
  %36 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i32 0, i32 1
  store i32* %12, i32** %37, align 8
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load i64, i64* @I2C_M_RD, align 8
  %44 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 16
  %46 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %47 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %46, i32 0, i32 0
  store i32 1, i32* %47, align 16
  %48 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i32 0, i32 1
  store i32* %13, i32** %49, align 8
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %54 = call i32 @i2c_transfer(i32 %52, %struct.i2c_msg* %53, i32 2)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %26
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %120

59:                                               ; preds = %26
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 65
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %120

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %2
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @PT1_FE_CLK_20MHZ, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i32**, i32*** @va1j5jf8007s_20mhz_configs, align 8
  %75 = bitcast i32** %74 to [2 x i32]*
  store [2 x i32]* %75, [2 x i32]** %8, align 8
  %76 = load i32**, i32*** @va1j5jf8007s_20mhz_configs, align 8
  %77 = call i32 @ARRAY_SIZE(i32** %76)
  store i32 %77, i32* %10, align 4
  br label %83

78:                                               ; preds = %70
  %79 = load i32**, i32*** @va1j5jf8007t_20mhz_configs, align 8
  %80 = bitcast i32** %79 to [2 x i32]*
  store [2 x i32]* %80, [2 x i32]** %8, align 8
  %81 = load i32**, i32*** @va1j5jf8007t_20mhz_configs, align 8
  %82 = call i32 @ARRAY_SIZE(i32** %81)
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %78, %73
  br label %98

84:                                               ; preds = %66
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32**, i32*** @va1j5jf8007s_25mhz_configs, align 8
  %89 = bitcast i32** %88 to [2 x i32]*
  store [2 x i32]* %89, [2 x i32]** %8, align 8
  %90 = load i32**, i32*** @va1j5jf8007s_25mhz_configs, align 8
  %91 = call i32 @ARRAY_SIZE(i32** %90)
  store i32 %91, i32* %10, align 4
  br label %97

92:                                               ; preds = %84
  %93 = load i32**, i32*** @va1j5jf8007t_25mhz_configs, align 8
  %94 = bitcast i32** %93 to [2 x i32]*
  store [2 x i32]* %94, [2 x i32]** %8, align 8
  %95 = load i32**, i32*** @va1j5jf8007t_25mhz_configs, align 8
  %96 = call i32 @ARRAY_SIZE(i32** %95)
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %92, %87
  br label %98

98:                                               ; preds = %97, %83
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %116, %98
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %119

103:                                              ; preds = %99
  %104 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %105 = load [2 x i32]*, [2 x i32]** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %105, i64 %107
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %108, i64 0, i64 0
  %110 = call i32 @i2c_master_send(%struct.i2c_client* %104, i32* %109, i32 2)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %103
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %3, align 4
  br label %120

115:                                              ; preds = %103
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %99

119:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %119, %113, %62, %57
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @strncmp(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
