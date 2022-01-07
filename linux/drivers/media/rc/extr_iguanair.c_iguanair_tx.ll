; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_iguanair.c_iguanair_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_iguanair.c_iguanair_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.iguanair* }
%struct.iguanair = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@DIR_OUT = common dso_local global i32 0, align 4
@CMD_SEND = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32*, i32)* @iguanair_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iguanair_tx(%struct.rc_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iguanair*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %14 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %13, i32 0, i32 0
  %15 = load %struct.iguanair*, %struct.iguanair** %14, align 8
  store %struct.iguanair* %15, %struct.iguanair** %7, align 8
  %16 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %17 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %16, i32 0, i32 3
  %18 = call i32 @mutex_lock(i32* %17)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %69, %3
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %72

23:                                               ; preds = %19
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %30 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul i32 %28, %31
  %33 = call i32 @DIV_ROUND_CLOSEST(i32 %32, i32 1000000)
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %48, %23
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %34
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @min(i32 %38, i32 127)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %42 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp uge i32 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %12, align 4
  br label %114

48:                                               ; preds = %37
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 128, i32 0
  %55 = or i32 %49, %54
  %56 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %57 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %56, i32 0, i32 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %9, align 4
  %63 = zext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 %55, i32* %64, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = sub i32 %66, %65
  store i32 %67, i32* %11, align 4
  br label %34

68:                                               ; preds = %34
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %8, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %19

72:                                               ; preds = %19
  %73 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %74 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %73, i32 0, i32 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = load i32, i32* @DIR_OUT, align 4
  %79 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %80 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %79, i32 0, i32 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  store i32 %78, i32* %83, align 4
  %84 = load i32, i32* @CMD_SEND, align 4
  %85 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %86 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %85, i32 0, i32 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32 %84, i32* %89, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %92 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %91, i32 0, i32 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  store i32 %90, i32* %94, align 8
  %95 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %96 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %95, i32 0, i32 2
  store i32 0, i32* %96, align 8
  %97 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %98 = load i32, i32* %9, align 4
  %99 = zext i32 %98 to i64
  %100 = add i64 32, %99
  %101 = trunc i64 %100 to i32
  %102 = call i32 @iguanair_send(%struct.iguanair* %97, i32 %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %72
  %106 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %107 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i32, i32* @EOVERFLOW, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %110, %105, %72
  br label %114

114:                                              ; preds = %113, %45
  %115 = load %struct.iguanair*, %struct.iguanair** %7, align 8
  %116 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %115, i32 0, i32 3
  %117 = call i32 @mutex_unlock(i32* %116)
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load i32, i32* %12, align 4
  br label %124

122:                                              ; preds = %114
  %123 = load i32, i32* %6, align 4
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  ret i32 %125
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @iguanair_send(%struct.iguanair*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
