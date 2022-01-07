; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_bsd_comp.c_bsd_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_bsd_comp.c_bsd_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsd_db = type { i32, i32, i32, i32, i32, i32*, i8* }

@CI_BSD_COMPRESS = common dso_local global i8 0, align 1
@BSD_CURRENT_VERSION = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32)* @bsd_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bsd_alloc(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bsd_db*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 3
  br i1 %14, label %36, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* @CI_BSD_COMPRESS, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %36, label %23

23:                                               ; preds = %15
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %27, 3
  br i1 %28, label %36, label %29

29:                                               ; preds = %23
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @BSD_VERSION(i8 zeroext %32)
  %34 = load i64, i64* @BSD_CURRENT_VERSION, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29, %23, %15, %3
  store i8* null, i8** %4, align 8
  br label %114

37:                                               ; preds = %29
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 2
  %40 = load i8, i8* %39, align 1
  %41 = call i32 @BSD_NBITS(i8 zeroext %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  switch i32 %42, label %48 [
    i32 9, label %43
    i32 10, label %43
    i32 11, label %43
    i32 12, label %43
    i32 13, label %44
    i32 14, label %45
    i32 15, label %46
    i32 16, label %47
  ]

43:                                               ; preds = %37, %37, %37, %37
  store i32 5003, i32* %9, align 4
  store i32 4, i32* %10, align 4
  br label %49

44:                                               ; preds = %37
  store i32 9001, i32* %9, align 4
  store i32 5, i32* %10, align 4
  br label %49

45:                                               ; preds = %37
  store i32 18013, i32* %9, align 4
  store i32 6, i32* %10, align 4
  br label %49

46:                                               ; preds = %37
  store i32 35023, i32* %9, align 4
  store i32 7, i32* %10, align 4
  br label %49

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %37, %47
  store i8* null, i8** %4, align 8
  br label %114

49:                                               ; preds = %46, %45, %44, %43
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @MAXCODE(i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.bsd_db* @kzalloc(i32 40, i32 %52)
  store %struct.bsd_db* %53, %struct.bsd_db** %12, align 8
  %54 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %55 = icmp ne %struct.bsd_db* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  store i8* null, i8** %4, align 8
  br label %114

57:                                               ; preds = %49
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @array_size(i32 %58, i32 4)
  %60 = call i8* @vmalloc(i32 %59)
  %61 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %62 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %61, i32 0, i32 6
  store i8* %60, i8** %62, align 8
  %63 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %64 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %63, i32 0, i32 6
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %57
  %68 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %69 = call i32 @bsd_free(%struct.bsd_db* %68)
  store i8* null, i8** %4, align 8
  br label %114

70:                                               ; preds = %57
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %75 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %74, i32 0, i32 5
  store i32* null, i32** %75, align 8
  br label %92

76:                                               ; preds = %70
  %77 = load i32, i32* %11, align 4
  %78 = add i32 %77, 1
  %79 = call i32 @array_size(i32 4, i32 %78)
  %80 = call i8* @vmalloc(i32 %79)
  %81 = bitcast i8* %80 to i32*
  %82 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %83 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %82, i32 0, i32 5
  store i32* %81, i32** %83, align 8
  %84 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %85 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %84, i32 0, i32 5
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %76
  %89 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %90 = call i32 @bsd_free(%struct.bsd_db* %89)
  store i8* null, i8** %4, align 8
  br label %114

91:                                               ; preds = %76
  br label %92

92:                                               ; preds = %91, %73
  %93 = load i32, i32* %9, align 4
  %94 = zext i32 %93 to i64
  %95 = mul i64 4, %94
  %96 = add i64 40, %95
  %97 = trunc i64 %96 to i32
  %98 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %99 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %102 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %105 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %108 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %111 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  %112 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %113 = bitcast %struct.bsd_db* %112 to i8*
  store i8* %113, i8** %4, align 8
  br label %114

114:                                              ; preds = %92, %88, %67, %56, %48, %36
  %115 = load i8*, i8** %4, align 8
  ret i8* %115
}

declare dso_local i64 @BSD_VERSION(i8 zeroext) #1

declare dso_local i32 @BSD_NBITS(i8 zeroext) #1

declare dso_local i32 @MAXCODE(i32) #1

declare dso_local %struct.bsd_db* @kzalloc(i32, i32) #1

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i32 @bsd_free(%struct.bsd_db*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
