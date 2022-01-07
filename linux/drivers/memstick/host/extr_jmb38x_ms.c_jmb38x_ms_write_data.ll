; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_write_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jmb38x_ms_host = type { i32, i8*, i64 }

@STATUS_FIFO_FULL = common dso_local global i32 0, align 4
@STATUS = common dso_local global i64 0, align 8
@DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jmb38x_ms_host*, i8*, i32)* @jmb38x_ms_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jmb38x_ms_write_data(%struct.jmb38x_ms_host* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.jmb38x_ms_host*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.jmb38x_ms_host* %0, %struct.jmb38x_ms_host** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %10 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %52

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %24, %13
  %15 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %16 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi i1 [ false, %14 ], [ %21, %19 ]
  br i1 %23, label %24, label %51

24:                                               ; preds = %22
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %8, align 4
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %33 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %34, 8
  %36 = shl i32 %31, %35
  %37 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %38 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %42, %36
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %40, align 1
  %45 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %46 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* %7, align 4
  %50 = add i32 %49, -1
  store i32 %50, i32* %7, align 4
  br label %14

51:                                               ; preds = %22
  br label %52

52:                                               ; preds = %51, %3
  %53 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %54 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 4
  br i1 %56, label %57, label %85

57:                                               ; preds = %52
  %58 = load i32, i32* @STATUS_FIFO_FULL, align 4
  %59 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %60 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @STATUS, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @readl(i64 %63)
  %65 = and i32 %58, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %85, label %67

67:                                               ; preds = %57
  %68 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %69 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %74 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DATA, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel(i8 zeroext %72, i64 %77)
  %79 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %80 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  %81 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %82 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  store i8 0, i8* %84, align 1
  br label %93

85:                                               ; preds = %57, %52
  %86 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %87 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %4, align 4
  br label %201

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %67
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %4, align 4
  br label %201

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %114, %98
  %100 = load i32, i32* @STATUS_FIFO_FULL, align 4
  %101 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %102 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @STATUS, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @readl(i64 %105)
  %107 = and i32 %100, %106
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  br i1 %109, label %110, label %131

110:                                              ; preds = %99
  %111 = load i32, i32* %7, align 4
  %112 = icmp ult i32 %111, 4
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %131

114:                                              ; preds = %110
  %115 = load i8*, i8** %6, align 8
  %116 = load i32, i32* %8, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = bitcast i8* %118 to i32*
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %122 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @DATA, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @__raw_writel(i32 %120, i64 %125)
  %127 = load i32, i32* %7, align 4
  %128 = sub i32 %127, 4
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %8, align 4
  %130 = add i32 %129, 4
  store i32 %130, i32* %8, align 4
  br label %99

131:                                              ; preds = %113, %99
  %132 = load i32, i32* %7, align 4
  switch i32 %132, label %194 [
    i32 3, label %133
    i32 2, label %154
    i32 1, label %175
  ]

133:                                              ; preds = %131
  %134 = load i8*, i8** %6, align 8
  %135 = load i32, i32* %8, align 4
  %136 = add i32 %135, 2
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = shl i32 %140, 16
  %142 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %143 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 0
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = or i32 %147, %141
  %149 = trunc i32 %148 to i8
  store i8 %149, i8* %145, align 1
  %150 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %151 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 8
  br label %154

154:                                              ; preds = %131, %133
  %155 = load i8*, i8** %6, align 8
  %156 = load i32, i32* %8, align 4
  %157 = add i32 %156, 1
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %155, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = shl i32 %161, 8
  %163 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %164 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 0
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = or i32 %168, %162
  %170 = trunc i32 %169 to i8
  store i8 %170, i8* %166, align 1
  %171 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %172 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 8
  br label %175

175:                                              ; preds = %131, %154
  %176 = load i8*, i8** %6, align 8
  %177 = load i32, i32* %8, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %176, i64 %178
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  %182 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %183 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %182, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 0
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = or i32 %187, %181
  %189 = trunc i32 %188 to i8
  store i8 %189, i8* %185, align 1
  %190 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %191 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 8
  br label %194

194:                                              ; preds = %175, %131
  %195 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %196 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %8, align 4
  %199 = add i32 %198, %197
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* %8, align 4
  store i32 %200, i32* %4, align 4
  br label %201

201:                                              ; preds = %194, %96, %90
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i8 zeroext, i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
