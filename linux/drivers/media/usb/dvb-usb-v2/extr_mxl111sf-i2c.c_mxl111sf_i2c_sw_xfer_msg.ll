; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-i2c.c_mxl111sf_i2c_sw_xfer_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-i2c.c_mxl111sf_i2c_sw_xfer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_state = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [3 x i8] c"()\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl111sf_state*, %struct.i2c_msg*)* @mxl111sf_i2c_sw_xfer_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxl111sf_i2c_sw_xfer_msg(%struct.mxl111sf_state* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca %struct.mxl111sf_state*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mxl111sf_state* %0, %struct.mxl111sf_state** %3, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %4, align 8
  %7 = call i32 @mxl_i2c(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @I2C_M_RD, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %81

14:                                               ; preds = %2
  %15 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %16 = call i32 @mxl111sf_i2c_start(%struct.mxl111sf_state* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @mxl_fail(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %133

21:                                               ; preds = %14
  %22 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %23 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 1
  %27 = or i32 %26, 1
  %28 = call i32 @mxl111sf_i2c_bitbang_sendbyte(%struct.mxl111sf_state* %22, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @mxl_fail(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %34 = call i32 @mxl111sf_i2c_stop(%struct.mxl111sf_state* %33)
  br label %133

35:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %68, %35
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %71

42:                                               ; preds = %36
  %43 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %44 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i32 @mxl111sf_i2c_bitbang_recvbyte(%struct.mxl111sf_state* %43, i32* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @mxl_fail(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %56 = call i32 @mxl111sf_i2c_stop(%struct.mxl111sf_state* %55)
  br label %133

57:                                               ; preds = %42
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, 1
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %66 = call i32 @mxl111sf_i2c_ack(%struct.mxl111sf_state* %65)
  br label %67

67:                                               ; preds = %64, %57
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %36

71:                                               ; preds = %36
  %72 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %73 = call i32 @mxl111sf_i2c_nack(%struct.mxl111sf_state* %72)
  %74 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %75 = call i32 @mxl111sf_i2c_stop(%struct.mxl111sf_state* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @mxl_fail(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %133

80:                                               ; preds = %71
  br label %132

81:                                               ; preds = %2
  %82 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %83 = call i32 @mxl111sf_i2c_start(%struct.mxl111sf_state* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i64 @mxl_fail(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %133

88:                                               ; preds = %81
  %89 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %90 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %91 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 1
  %94 = and i32 %93, 254
  %95 = call i32 @mxl111sf_i2c_bitbang_sendbyte(%struct.mxl111sf_state* %89, i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i64 @mxl_fail(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %88
  %100 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %101 = call i32 @mxl111sf_i2c_stop(%struct.mxl111sf_state* %100)
  br label %133

102:                                              ; preds = %88
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %126, %102
  %104 = load i32, i32* %5, align 4
  %105 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %106 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %129

109:                                              ; preds = %103
  %110 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %111 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %112 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @mxl111sf_i2c_bitbang_sendbyte(%struct.mxl111sf_state* %110, i32 %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i64 @mxl_fail(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %109
  %123 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %124 = call i32 @mxl111sf_i2c_stop(%struct.mxl111sf_state* %123)
  br label %133

125:                                              ; preds = %109
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %5, align 4
  br label %103

129:                                              ; preds = %103
  %130 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %131 = call i32 @mxl111sf_i2c_stop(%struct.mxl111sf_state* %130)
  br label %132

132:                                              ; preds = %129, %80
  br label %133

133:                                              ; preds = %132, %122, %99, %87, %79, %54, %32, %20
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

declare dso_local i32 @mxl_i2c(i8*) #1

declare dso_local i32 @mxl111sf_i2c_start(%struct.mxl111sf_state*) #1

declare dso_local i64 @mxl_fail(i32) #1

declare dso_local i32 @mxl111sf_i2c_bitbang_sendbyte(%struct.mxl111sf_state*, i32) #1

declare dso_local i32 @mxl111sf_i2c_stop(%struct.mxl111sf_state*) #1

declare dso_local i32 @mxl111sf_i2c_bitbang_recvbyte(%struct.mxl111sf_state*, i32*) #1

declare dso_local i32 @mxl111sf_i2c_ack(%struct.mxl111sf_state*) #1

declare dso_local i32 @mxl111sf_i2c_nack(%struct.mxl111sf_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
