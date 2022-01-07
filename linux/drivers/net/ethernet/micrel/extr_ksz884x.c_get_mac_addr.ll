; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_get_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_get_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@ETH_ALEN = common dso_local global i32 0, align 4
@MAIN_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dev_info*, i8*, i32)* @get_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_mac_addr(%struct.dev_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.dev_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dev_info* %0, %struct.dev_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %117, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @ETH_ALEN, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %120

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %16
  store i32 1, i32* %9, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = call i32 @hex_to_bin(i8 signext %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load i32, i32* %10, align 4
  %34 = mul nsw i32 %33, 16
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %10, align 4
  br label %48

37:                                               ; preds = %23
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 58, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 2, i32* %9, align 4
  br label %47

46:                                               ; preds = %37
  br label %120

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %47, %32
  br label %55

49:                                               ; preds = %16
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 2, i32* %9, align 4
  br label %54

53:                                               ; preds = %49
  br label %120

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %54, %48
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 2, %56
  br i1 %57, label %58, label %117

58:                                               ; preds = %55
  %59 = load i32, i32* @MAIN_PORT, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %87

62:                                               ; preds = %58
  %63 = load i32, i32* %10, align 4
  %64 = trunc i32 %63 to i8
  %65 = load %struct.dev_info*, %struct.dev_info** %4, align 8
  %66 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  store i8 %64, i8* %72, align 1
  %73 = load %struct.dev_info*, %struct.dev_info** %4, align 8
  %74 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i8, i8* %75, align 8
  %77 = sext i8 %76 to i32
  %78 = load %struct.dev_info*, %struct.dev_info** %4, align 8
  %79 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 5
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = add nsw i32 %84, %77
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %82, align 1
  br label %116

87:                                               ; preds = %58
  %88 = load i32, i32* %10, align 4
  %89 = trunc i32 %88 to i8
  %90 = load %struct.dev_info*, %struct.dev_info** %4, align 8
  %91 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  store i8 %89, i8* %99, align 1
  %100 = load %struct.dev_info*, %struct.dev_info** %4, align 8
  %101 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i8, i8* %102, align 8
  %104 = sext i8 %103 to i32
  %105 = load %struct.dev_info*, %struct.dev_info** %4, align 8
  %106 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 5
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = add nsw i32 %113, %104
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %111, align 1
  br label %116

116:                                              ; preds = %87, %62
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %117

117:                                              ; preds = %116, %55
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %12

120:                                              ; preds = %53, %46, %12
  %121 = load i32, i32* @ETH_ALEN, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = load i32, i32* @MAIN_PORT, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load %struct.dev_info*, %struct.dev_info** %4, align 8
  %130 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  store i32 1, i32* %131, align 4
  br label %132

132:                                              ; preds = %128, %124
  br label %133

133:                                              ; preds = %132, %120
  ret void
}

declare dso_local i32 @hex_to_bin(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
