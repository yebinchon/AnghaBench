; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_tdme_checkpibattribute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_tdme_checkpibattribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAC_SUCCESS = common dso_local global i32 0, align 4
@MAC_INVALID_PARAMETER = common dso_local global i32 0, align 4
@MAX_BEACON_PAYLOAD_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @tdme_checkpibattribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tdme_checkpibattribute(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* @MAC_SUCCESS, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %115 [
    i32 128, label %14
    i32 129, label %20
    i32 143, label %26
    i32 141, label %35
    i32 140, label %42
    i32 142, label %49
    i32 138, label %55
    i32 137, label %64
    i32 136, label %70
    i32 135, label %76
    i32 133, label %82
    i32 130, label %91
    i32 149, label %97
    i32 148, label %97
    i32 147, label %97
    i32 144, label %97
    i32 139, label %97
    i32 134, label %97
    i32 132, label %97
    i32 131, label %97
    i32 145, label %103
    i32 146, label %109
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  %16 = icmp sgt i32 %15, 63
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @MAC_INVALID_PARAMETER, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %17, %14
  br label %116

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 3
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @MAC_INVALID_PARAMETER, align 4
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %23, %20
  br label %116

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 6
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = icmp sgt i32 %30, 41
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %26
  %33 = load i32, i32* @MAC_INVALID_PARAMETER, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %32, %29
  br label %116

35:                                               ; preds = %3
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @MAX_BEACON_PAYLOAD_LENGTH, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @MAC_INVALID_PARAMETER, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %39, %35
  br label %116

42:                                               ; preds = %3
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @MAX_BEACON_PAYLOAD_LENGTH, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @MAC_INVALID_PARAMETER, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %46, %42
  br label %116

49:                                               ; preds = %3
  %50 = load i32, i32* %8, align 4
  %51 = icmp sgt i32 %50, 15
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @MAC_INVALID_PARAMETER, align 4
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %52, %49
  br label %116

55:                                               ; preds = %3
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 3
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = icmp sgt i32 %59, 8
  br i1 %60, label %61, label %63

61:                                               ; preds = %58, %55
  %62 = load i32, i32* @MAC_INVALID_PARAMETER, align 4
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %61, %58
  br label %116

64:                                               ; preds = %3
  %65 = load i32, i32* %8, align 4
  %66 = icmp sgt i32 %65, 5
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @MAC_INVALID_PARAMETER, align 4
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %67, %64
  br label %116

70:                                               ; preds = %3
  %71 = load i32, i32* %8, align 4
  %72 = icmp sgt i32 %71, 7
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* @MAC_INVALID_PARAMETER, align 4
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %73, %70
  br label %116

76:                                               ; preds = %3
  %77 = load i32, i32* %8, align 4
  %78 = icmp sgt i32 %77, 8
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32, i32* @MAC_INVALID_PARAMETER, align 4
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %79, %76
  br label %116

82:                                               ; preds = %3
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %83, 2
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %8, align 4
  %87 = icmp sgt i32 %86, 64
  br i1 %87, label %88, label %90

88:                                               ; preds = %85, %82
  %89 = load i32, i32* @MAC_INVALID_PARAMETER, align 4
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %88, %85
  br label %116

91:                                               ; preds = %3
  %92 = load i32, i32* %8, align 4
  %93 = icmp sgt i32 %92, 15
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32, i32* @MAC_INVALID_PARAMETER, align 4
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %94, %91
  br label %116

97:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  %98 = load i32, i32* %8, align 4
  %99 = icmp sgt i32 %98, 1
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* @MAC_INVALID_PARAMETER, align 4
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %100, %97
  br label %116

103:                                              ; preds = %3
  %104 = load i32, i32* %8, align 4
  %105 = icmp sgt i32 %104, 7
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i32, i32* @MAC_INVALID_PARAMETER, align 4
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %106, %103
  br label %116

109:                                              ; preds = %3
  %110 = load i32, i32* %8, align 4
  %111 = icmp sgt i32 %110, 3
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i32, i32* @MAC_INVALID_PARAMETER, align 4
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %112, %109
  br label %116

115:                                              ; preds = %3
  br label %116

116:                                              ; preds = %115, %114, %108, %102, %96, %90, %81, %75, %69, %63, %54, %48, %41, %34, %25, %19
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
