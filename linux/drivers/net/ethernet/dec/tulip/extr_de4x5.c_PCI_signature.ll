; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_PCI_signature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_PCI_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.de4x5_private = type { i32, i32, i32 }

@de4x5_signatures = common dso_local global i32* null, align 8
@DC21040 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"DE434/5\00", align 1
@dec_only = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"DC21040\00", align 1
@DC21041 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"DC21041\00", align 1
@DC21140 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"DC21140\00", align 1
@DC21142 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"DC21142\00", align 1
@DC21143 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"DC21143\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@DC2114x = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.de4x5_private*)* @PCI_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PCI_signature(i8* %0, %struct.de4x5_private* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.de4x5_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.de4x5_private* %1, %struct.de4x5_private** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32*, i32** @de4x5_signatures, align 8
  %11 = call i32 @ARRAY_SIZE(i32* %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %13 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DC21040, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @strcpy(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %137

21:                                               ; preds = %2
  %22 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %23 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %22, i32 0, i32 2
  %24 = bitcast i32* %23 to i8*
  %25 = getelementptr inbounds i8, i8* %24, i64 19
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = mul nsw i32 %27, 3
  store i32 %28, i32* %9, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %31 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %30, i32 0, i32 2
  %32 = bitcast i32* %31 to i8*
  %33 = getelementptr inbounds i8, i8* %32, i64 26
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = call i32 @strncpy(i8* %29, i8* %36, i32 8)
  br label %38

38:                                               ; preds = %21
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 8
  store i8 0, i8* %40, align 1
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %56, %38
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load i8*, i8** %4, align 8
  %47 = load i32*, i32** @de4x5_signatures, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32* @strstr(i8* %46, i32 %51)
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %59

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %41

59:                                               ; preds = %54, %41
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %124

63:                                               ; preds = %59
  %64 = load i64, i64* @dec_only, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i8*, i8** %4, align 8
  store i8 0, i8* %67, align 1
  br label %114

68:                                               ; preds = %63
  %69 = load i8*, i8** %4, align 8
  %70 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %71 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @DC21040, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %111

76:                                               ; preds = %68
  %77 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %78 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @DC21041, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %109

83:                                               ; preds = %76
  %84 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %85 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @DC21140, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %107

90:                                               ; preds = %83
  %91 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %92 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @DC21142, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %105

97:                                               ; preds = %90
  %98 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %99 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @DC21143, align 4
  %102 = icmp eq i32 %100, %101
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  br label %105

105:                                              ; preds = %97, %96
  %106 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %96 ], [ %104, %97 ]
  br label %107

107:                                              ; preds = %105, %89
  %108 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %89 ], [ %106, %105 ]
  br label %109

109:                                              ; preds = %107, %82
  %110 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %82 ], [ %108, %107 ]
  br label %111

111:                                              ; preds = %109, %75
  %112 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %75 ], [ %110, %109 ]
  %113 = call i32 @strcpy(i8* %69, i8* %112)
  br label %114

114:                                              ; preds = %111, %66
  %115 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %116 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @DC21041, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %122 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %121, i32 0, i32 1
  store i32 1, i32* %122, align 4
  br label %123

123:                                              ; preds = %120, %114
  br label %135

124:                                              ; preds = %59
  %125 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %126 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, -256
  %129 = load i32, i32* @DC2114x, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %124
  %132 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %133 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %132, i32 0, i32 1
  store i32 1, i32* %133, align 4
  br label %134

134:                                              ; preds = %131, %124
  br label %135

135:                                              ; preds = %134, %123
  %136 = load i32, i32* %7, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %135, %17
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32* @strstr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
