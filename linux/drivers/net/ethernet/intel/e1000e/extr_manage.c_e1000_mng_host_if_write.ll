; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_manage.c_e1000_mng_host_if_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_manage.c_e1000_mng_host_if_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_HI_MAX_MNG_DATA_LENGTH = common dso_local global i64 0, align 8
@E1000_ERR_PARAM = common dso_local global i32 0, align 4
@E1000_HOST_IF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i64*, i64, i64, i64*)* @e1000_mng_host_if_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_mng_host_if_write(%struct.e1000_hw* %0, i64* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %19 = load i64*, i64** %8, align 8
  store i64* %19, i64** %13, align 8
  store i64 0, i64* %14, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %5
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %9, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i64, i64* @E1000_HI_MAX_MNG_DATA_LENGTH, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %5
  %29 = load i32, i32* @E1000_ERR_PARAM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %163

31:                                               ; preds = %22
  store i64* %14, i64** %12, align 8
  %32 = load i64, i64* %10, align 8
  %33 = and i64 %32, 3
  store i64 %33, i64* %18, align 8
  %34 = load i64, i64* %10, align 8
  %35 = ashr i64 %34, 2
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %18, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %77

38:                                               ; preds = %31
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %40 = load i32, i32* @E1000_HOST_IF, align 4
  %41 = load i64, i64* %10, align 8
  %42 = call i64 @E1000_READ_REG_ARRAY(%struct.e1000_hw* %39, i32 %40, i64 %41)
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* %18, align 8
  store i64 %43, i64* %17, align 8
  br label %44

44:                                               ; preds = %61, %38
  %45 = load i64, i64* %17, align 8
  %46 = icmp ult i64 %45, 8
  br i1 %46, label %47, label %64

47:                                               ; preds = %44
  %48 = load i64*, i64** %13, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 1
  store i64* %49, i64** %13, align 8
  %50 = load i64, i64* %48, align 8
  %51 = load i64*, i64** %12, align 8
  %52 = load i64, i64* %17, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  store i64 %50, i64* %53, align 8
  %54 = load i64*, i64** %12, align 8
  %55 = load i64, i64* %17, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %11, align 8
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, %57
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %47
  %62 = load i64, i64* %17, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %17, align 8
  br label %44

64:                                               ; preds = %44
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %66 = load i32, i32* @E1000_HOST_IF, align 4
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %14, align 8
  %69 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %65, i32 %66, i64 %67, i64 %68)
  %70 = load i64, i64* %17, align 8
  %71 = load i64, i64* %18, align 8
  %72 = sub nsw i64 %70, %71
  %73 = load i64, i64* %9, align 8
  %74 = sub nsw i64 %73, %72
  store i64 %74, i64* %9, align 8
  %75 = load i64, i64* %10, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %10, align 8
  br label %77

77:                                               ; preds = %64, %31
  %78 = load i64, i64* %9, align 8
  %79 = and i64 %78, 3
  store i64 %79, i64* %15, align 8
  %80 = load i64, i64* %15, align 8
  %81 = load i64, i64* %9, align 8
  %82 = sub nsw i64 %81, %80
  store i64 %82, i64* %9, align 8
  %83 = load i64, i64* %9, align 8
  %84 = ashr i64 %83, 2
  store i64 %84, i64* %9, align 8
  store i64 0, i64* %16, align 8
  br label %85

85:                                               ; preds = %118, %77
  %86 = load i64, i64* %16, align 8
  %87 = load i64, i64* %9, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %121

89:                                               ; preds = %85
  store i64 0, i64* %17, align 8
  br label %90

90:                                               ; preds = %107, %89
  %91 = load i64, i64* %17, align 8
  %92 = icmp ult i64 %91, 8
  br i1 %92, label %93, label %110

93:                                               ; preds = %90
  %94 = load i64*, i64** %13, align 8
  %95 = getelementptr inbounds i64, i64* %94, i32 1
  store i64* %95, i64** %13, align 8
  %96 = load i64, i64* %94, align 8
  %97 = load i64*, i64** %12, align 8
  %98 = load i64, i64* %17, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  store i64 %96, i64* %99, align 8
  %100 = load i64*, i64** %12, align 8
  %101 = load i64, i64* %17, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load i64*, i64** %11, align 8
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, %103
  store i64 %106, i64* %104, align 8
  br label %107

107:                                              ; preds = %93
  %108 = load i64, i64* %17, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %17, align 8
  br label %90

110:                                              ; preds = %90
  %111 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %112 = load i32, i32* @E1000_HOST_IF, align 4
  %113 = load i64, i64* %10, align 8
  %114 = load i64, i64* %16, align 8
  %115 = add nsw i64 %113, %114
  %116 = load i64, i64* %14, align 8
  %117 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %111, i32 %112, i64 %115, i64 %116)
  br label %118

118:                                              ; preds = %110
  %119 = load i64, i64* %16, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %16, align 8
  br label %85

121:                                              ; preds = %85
  %122 = load i64, i64* %15, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %162

124:                                              ; preds = %121
  store i64 0, i64* %17, align 8
  br label %125

125:                                              ; preds = %151, %124
  %126 = load i64, i64* %17, align 8
  %127 = icmp ult i64 %126, 8
  br i1 %127, label %128, label %154

128:                                              ; preds = %125
  %129 = load i64, i64* %17, align 8
  %130 = load i64, i64* %15, align 8
  %131 = icmp slt i64 %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %128
  %133 = load i64*, i64** %13, align 8
  %134 = getelementptr inbounds i64, i64* %133, i32 1
  store i64* %134, i64** %13, align 8
  %135 = load i64, i64* %133, align 8
  %136 = load i64*, i64** %12, align 8
  %137 = load i64, i64* %17, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  store i64 %135, i64* %138, align 8
  br label %143

139:                                              ; preds = %128
  %140 = load i64*, i64** %12, align 8
  %141 = load i64, i64* %17, align 8
  %142 = getelementptr inbounds i64, i64* %140, i64 %141
  store i64 0, i64* %142, align 8
  br label %143

143:                                              ; preds = %139, %132
  %144 = load i64*, i64** %12, align 8
  %145 = load i64, i64* %17, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = load i64*, i64** %11, align 8
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, %147
  store i64 %150, i64* %148, align 8
  br label %151

151:                                              ; preds = %143
  %152 = load i64, i64* %17, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* %17, align 8
  br label %125

154:                                              ; preds = %125
  %155 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %156 = load i32, i32* @E1000_HOST_IF, align 4
  %157 = load i64, i64* %10, align 8
  %158 = load i64, i64* %16, align 8
  %159 = add nsw i64 %157, %158
  %160 = load i64, i64* %14, align 8
  %161 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %155, i32 %156, i64 %159, i64 %160)
  br label %162

162:                                              ; preds = %154, %121
  store i32 0, i32* %6, align 4
  br label %163

163:                                              ; preds = %162, %28
  %164 = load i32, i32* %6, align 4
  ret i32 %164
}

declare dso_local i64 @E1000_READ_REG_ARRAY(%struct.e1000_hw*, i32, i64) #1

declare dso_local i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
