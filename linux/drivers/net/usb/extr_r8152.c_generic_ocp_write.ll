; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_generic_ocp_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_generic_ocp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32 }

@RTL8152_UNPLUG = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@BYTE_EN_START_MASK = common dso_local global i32 0, align 4
@BYTE_EN_END_MASK = common dso_local global i32 0, align 4
@BYTE_EN_DWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r8152*, i32, i32, i32, i8*, i32)* @generic_ocp_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_ocp_write(%struct.r8152* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.r8152*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 512, i32* %18, align 4
  %19 = load i32, i32* @RTL8152_UNPLUG, align 4
  %20 = load %struct.r8152*, %struct.r8152** %8, align 8
  %21 = getelementptr inbounds %struct.r8152, %struct.r8152* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %163

27:                                               ; preds = %6
  %28 = load i32, i32* %11, align 4
  %29 = and i32 %28, 3
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, 3
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %12, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38, %34, %31, %27
  %42 = load i32, i32* @EPERM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %163

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %45, %46
  %48 = icmp sgt i32 %47, 65535
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EPERM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %163

52:                                               ; preds = %44
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @BYTE_EN_START_MASK, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @BYTE_EN_END_MASK, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = shl i32 %60, 4
  %62 = or i32 %59, %61
  store i32 %62, i32* %17, align 4
  %63 = load %struct.r8152*, %struct.r8152** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %17, align 4
  %67 = or i32 %65, %66
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 @set_registers(%struct.r8152* %63, i32 %64, i32 %67, i32 4, i8* %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %52
  br label %153

73:                                               ; preds = %52
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 4
  store i32 %75, i32* %9, align 4
  %76 = load i8*, i8** %12, align 8
  %77 = getelementptr i8, i8* %76, i64 4
  store i8* %77, i8** %12, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sub nsw i32 %78, 4
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %152

82:                                               ; preds = %73
  %83 = load i32, i32* %11, align 4
  %84 = sub nsw i32 %83, 4
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %135, %82
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %136

88:                                               ; preds = %85
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %18, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %115

92:                                               ; preds = %88
  %93 = load %struct.r8152*, %struct.r8152** %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @BYTE_EN_DWORD, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* %18, align 4
  %99 = load i8*, i8** %12, align 8
  %100 = call i32 @set_registers(%struct.r8152* %93, i32 %94, i32 %97, i32 %98, i8* %99)
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %92
  br label %153

104:                                              ; preds = %92
  %105 = load i32, i32* %18, align 4
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %18, align 4
  %109 = load i8*, i8** %12, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr i8, i8* %109, i64 %110
  store i8* %111, i8** %12, align 8
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* %11, align 4
  %114 = sub nsw i32 %113, %112
  store i32 %114, i32* %11, align 4
  br label %135

115:                                              ; preds = %88
  %116 = load %struct.r8152*, %struct.r8152** %8, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* @BYTE_EN_DWORD, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* %11, align 4
  %122 = load i8*, i8** %12, align 8
  %123 = call i32 @set_registers(%struct.r8152* %116, i32 %117, i32 %120, i32 %121, i8* %122)
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %115
  br label %153

127:                                              ; preds = %115
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i8*, i8** %12, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr i8, i8* %132, i64 %133
  store i8* %134, i8** %12, align 8
  store i32 0, i32* %11, align 4
  br label %136

135:                                              ; preds = %104
  br label %85

136:                                              ; preds = %127, %85
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %16, align 4
  %139 = ashr i32 %138, 4
  %140 = or i32 %137, %139
  store i32 %140, i32* %17, align 4
  %141 = load %struct.r8152*, %struct.r8152** %8, align 8
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* %17, align 4
  %145 = or i32 %143, %144
  %146 = load i8*, i8** %12, align 8
  %147 = call i32 @set_registers(%struct.r8152* %141, i32 %142, i32 %145, i32 4, i8* %146)
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %14, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %136
  br label %153

151:                                              ; preds = %136
  br label %152

152:                                              ; preds = %151, %73
  br label %153

153:                                              ; preds = %152, %150, %126, %103, %72
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* @ENODEV, align 4
  %156 = sub nsw i32 0, %155
  %157 = icmp eq i32 %154, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load %struct.r8152*, %struct.r8152** %8, align 8
  %160 = call i32 @rtl_set_unplug(%struct.r8152* %159)
  br label %161

161:                                              ; preds = %158, %153
  %162 = load i32, i32* %14, align 4
  store i32 %162, i32* %7, align 4
  br label %163

163:                                              ; preds = %161, %49, %41, %24
  %164 = load i32, i32* %7, align 4
  ret i32 %164
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_registers(%struct.r8152*, i32, i32, i32, i8*) #1

declare dso_local i32 @rtl_set_unplug(%struct.r8152*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
