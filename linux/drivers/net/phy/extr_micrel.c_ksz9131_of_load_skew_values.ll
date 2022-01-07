; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_micrel.c_ksz9131_of_load_skew_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_micrel.c_ksz9131_of_load_skew_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }
%struct.device_node = type { i32 }

@KSZ9131_OFFSET = common dso_local global i32 0, align 4
@KSZ9131_SKEW_5BIT_MAX = common dso_local global i32 0, align 4
@KSZ9131_SKEW_4BIT_MAX = common dso_local global i32 0, align 4
@KSZ9131_STEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, %struct.device_node*, i64, i64, i8**, i32)* @ksz9131_of_load_skew_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz9131_of_load_skew_values(%struct.phy_device* %0, %struct.device_node* %1, i64 %2, i64 %3, i8** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.phy_device*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %8, align 8
  store %struct.device_node* %1, %struct.device_node** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32 %5, i32* %13, align 4
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %23 = load i32, i32* @KSZ9131_OFFSET, align 4
  %24 = add nsw i32 1, %23
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %22, align 4
  %26 = getelementptr inbounds i32, i32* %22, i64 1
  %27 = load i32, i32* @KSZ9131_OFFSET, align 4
  %28 = add nsw i32 2, %27
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %26, align 4
  %30 = getelementptr inbounds i32, i32* %26, i64 1
  %31 = load i32, i32* @KSZ9131_OFFSET, align 4
  %32 = add nsw i32 3, %31
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %30, align 4
  %34 = getelementptr inbounds i32, i32* %30, i64 1
  %35 = load i32, i32* @KSZ9131_OFFSET, align 4
  %36 = add nsw i32 4, %35
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %34, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %38 = load i64, i64* %11, align 8
  %39 = icmp eq i64 %38, 5
  br i1 %39, label %40, label %42

40:                                               ; preds = %6
  %41 = load i32, i32* @KSZ9131_SKEW_5BIT_MAX, align 4
  store i32 %41, i32* %16, align 4
  br label %44

42:                                               ; preds = %6
  %43 = load i32, i32* @KSZ9131_SKEW_4BIT_MAX, align 4
  store i32 %43, i32* %16, align 4
  br label %44

44:                                               ; preds = %42, %40
  store i32 0, i32* %21, align 4
  br label %45

45:                                               ; preds = %83, %44
  %46 = load i32, i32* %21, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %86

49:                                               ; preds = %45
  %50 = load %struct.device_node*, %struct.device_node** %9, align 8
  %51 = load i8**, i8*** %12, align 8
  %52 = load i32, i32* %21, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @of_property_read_s32(%struct.device_node* %50, i8* %55, i32* %15)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %82, label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* @KSZ9131_OFFSET, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @KSZ9131_OFFSET, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %15, align 4
  br label %73

66:                                               ; preds = %58
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %16, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* %16, align 4
  store i32 %71, i32* %15, align 4
  br label %72

72:                                               ; preds = %70, %66
  br label %73

73:                                               ; preds = %72, %63
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* @KSZ9131_OFFSET, align 4
  %76 = add nsw i32 %74, %75
  %77 = load i32, i32* %21, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %78
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* %17, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %17, align 4
  br label %82

82:                                               ; preds = %73, %49
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %21, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %21, align 4
  br label %45

86:                                               ; preds = %45
  %87 = load i32, i32* %17, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  store i32 0, i32* %7, align 4
  br label %156

90:                                               ; preds = %86
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %96 = load i64, i64* %10, align 8
  %97 = call i64 @phy_read_mmd(%struct.phy_device* %95, i32 2, i64 %96)
  store i64 %97, i64* %19, align 8
  br label %99

98:                                               ; preds = %90
  store i64 0, i64* %19, align 8
  br label %99

99:                                               ; preds = %98, %94
  %100 = load i64, i64* %11, align 8
  %101 = icmp eq i64 %100, 4
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 15, i32 31
  %104 = sext i32 %103 to i64
  store i64 %104, i64* %18, align 8
  store i32 0, i32* %21, align 4
  br label %105

105:                                              ; preds = %148, %99
  %106 = load i32, i32* %21, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %151

109:                                              ; preds = %105
  %110 = load i32, i32* %21, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %21, align 4
  %115 = add nsw i32 %114, 1
  %116 = load i32, i32* @KSZ9131_OFFSET, align 4
  %117 = add nsw i32 %115, %116
  %118 = sub nsw i32 0, %117
  %119 = icmp ne i32 %113, %118
  br i1 %119, label %120, label %147

120:                                              ; preds = %109
  store i64 65535, i64* %20, align 8
  %121 = load i64, i64* %18, align 8
  %122 = load i64, i64* %11, align 8
  %123 = load i32, i32* %21, align 4
  %124 = sext i32 %123 to i64
  %125 = mul i64 %122, %124
  %126 = shl i64 %121, %125
  %127 = load i64, i64* %20, align 8
  %128 = xor i64 %127, %126
  store i64 %128, i64* %20, align 8
  %129 = load i64, i64* %19, align 8
  %130 = load i64, i64* %20, align 8
  %131 = and i64 %129, %130
  %132 = load i32, i32* %21, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @KSZ9131_STEP, align 4
  %137 = sdiv i32 %135, %136
  %138 = sext i32 %137 to i64
  %139 = load i64, i64* %18, align 8
  %140 = and i64 %138, %139
  %141 = load i64, i64* %11, align 8
  %142 = load i32, i32* %21, align 4
  %143 = sext i32 %142 to i64
  %144 = mul i64 %141, %143
  %145 = shl i64 %140, %144
  %146 = or i64 %131, %145
  store i64 %146, i64* %19, align 8
  br label %147

147:                                              ; preds = %120, %109
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %21, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %21, align 4
  br label %105

151:                                              ; preds = %105
  %152 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %153 = load i64, i64* %10, align 8
  %154 = load i64, i64* %19, align 8
  %155 = call i32 @phy_write_mmd(%struct.phy_device* %152, i32 2, i64 %153, i64 %154)
  store i32 %155, i32* %7, align 4
  br label %156

156:                                              ; preds = %151, %89
  %157 = load i32, i32* %7, align 4
  ret i32 %157
}

declare dso_local i32 @of_property_read_s32(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @phy_read_mmd(%struct.phy_device*, i32, i64) #1

declare dso_local i32 @phy_write_mmd(%struct.phy_device*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
