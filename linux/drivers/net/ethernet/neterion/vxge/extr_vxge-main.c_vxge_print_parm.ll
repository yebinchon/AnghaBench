; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_print_parm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_print_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxgedev = type { i8*, %struct.TYPE_12__*, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i64, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i64, i64 }

@VXGE_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: %d Vpath(s) opened\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: Interrupt type INTA\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: Interrupt type MSI-X\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"%s: RTH steering enabled for TCP_IPV4\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%s: RTH steering disabled\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"%s: Tx steering disabled\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"%s: Unsupported tx steering option\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"%s: Tx multiqueue steering enabled\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"%s: Tx port steering enabled\00", align 1
@VXGE_ERR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"%s: Unsupported tx steering type\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"%s: MAC Address learning enabled\00", align 1
@VXGE_HW_MAX_VIRTUAL_PATHS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"%s: MTU size - %d\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"%s: VLAN tag stripping %s\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"%s: Max frags : %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vxgedev*, i32)* @vxge_print_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxge_print_parm(%struct.vxgedev* %0, i32 %1) #0 {
  %3 = alloca %struct.vxgedev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vxgedev* %0, %struct.vxgedev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @VXGE_TRACE, align 4
  %7 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %8 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %7, i32 0, i32 2
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %13 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 (i32, i8*, i32, ...) @vxge_debug_init(i32 %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %11, i8* %14)
  %16 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %17 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %36 [
    i32 134, label %20
    i32 133, label %28
  ]

20:                                               ; preds = %2
  %21 = load i32, i32* @VXGE_TRACE, align 4
  %22 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %23 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %22, i32 0, i32 2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, i32, ...) @vxge_debug_init(i32 %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %36

28:                                               ; preds = %2
  %29 = load i32, i32* @VXGE_TRACE, align 4
  %30 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %31 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %30, i32 0, i32 2
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, i32, ...) @vxge_debug_init(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %2, %28, %20
  %37 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %38 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load i32, i32* @VXGE_TRACE, align 4
  %44 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %45 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %44, i32 0, i32 2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, i32, ...) @vxge_debug_init(i32 %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  br label %58

50:                                               ; preds = %36
  %51 = load i32, i32* @VXGE_TRACE, align 4
  %52 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %53 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %52, i32 0, i32 2
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, i32, ...) @vxge_debug_init(i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %50, %42
  %59 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %60 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %123 [
    i32 132, label %63
    i32 129, label %71
    i32 128, label %89
    i32 131, label %107
    i32 130, label %115
  ]

63:                                               ; preds = %58
  %64 = load i32, i32* @VXGE_TRACE, align 4
  %65 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %66 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %65, i32 0, i32 2
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, i32, ...) @vxge_debug_init(i32 %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %69)
  br label %141

71:                                               ; preds = %58
  %72 = load i32, i32* @VXGE_TRACE, align 4
  %73 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %74 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %73, i32 0, i32 2
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, i32, ...) @vxge_debug_init(i32 %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @VXGE_TRACE, align 4
  %80 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %81 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %80, i32 0, i32 2
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i8*, i32, ...) @vxge_debug_init(i32 %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %84)
  %86 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %87 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  store i32 0, i32* %88, align 4
  br label %141

89:                                               ; preds = %58
  %90 = load i32, i32* @VXGE_TRACE, align 4
  %91 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %92 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %91, i32 0, i32 2
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i32, i8*, i32, ...) @vxge_debug_init(i32 %90, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @VXGE_TRACE, align 4
  %98 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %99 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %98, i32 0, i32 2
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32, i8*, i32, ...) @vxge_debug_init(i32 %97, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  %104 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %105 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  store i32 0, i32* %106, align 4
  br label %141

107:                                              ; preds = %58
  %108 = load i32, i32* @VXGE_TRACE, align 4
  %109 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %110 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %109, i32 0, i32 2
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32, i8*, i32, ...) @vxge_debug_init(i32 %108, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %113)
  br label %141

115:                                              ; preds = %58
  %116 = load i32, i32* @VXGE_TRACE, align 4
  %117 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %118 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %117, i32 0, i32 2
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i32, i8*, i32, ...) @vxge_debug_init(i32 %116, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %121)
  br label %141

123:                                              ; preds = %58
  %124 = load i32, i32* @VXGE_ERR, align 4
  %125 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %126 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %125, i32 0, i32 2
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32, i8*, i32, ...) @vxge_debug_init(i32 %124, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @VXGE_TRACE, align 4
  %132 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %133 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %132, i32 0, i32 2
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i32, i8*, i32, ...) @vxge_debug_init(i32 %131, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %136)
  %138 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %139 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  store i32 0, i32* %140, align 4
  br label %141

141:                                              ; preds = %123, %115, %107, %89, %71, %63
  %142 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %143 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %141
  %148 = load i32, i32* @VXGE_TRACE, align 4
  %149 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %150 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %149, i32 0, i32 2
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i32, i8*, i32, ...) @vxge_debug_init(i32 %148, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %147, %141
  store i32 0, i32* %5, align 4
  br label %156

156:                                              ; preds = %225, %155
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* @VXGE_HW_MAX_VIRTUAL_PATHS, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %228

160:                                              ; preds = %156
  %161 = load i32, i32* %4, align 4
  %162 = load i32, i32* %5, align 4
  %163 = call i32 @vxge_bVALn(i32 %161, i32 %162, i32 1)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %160
  br label %225

166:                                              ; preds = %160
  %167 = load i32, i32* @VXGE_TRACE, align 4
  %168 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %169 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %168, i32 0, i32 2
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %174 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %173, i32 0, i32 1
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %177, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @vxge_debug_ll_config(i32 %167, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %172, i32 %183)
  %185 = load i32, i32* @VXGE_TRACE, align 4
  %186 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %187 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %186, i32 0, i32 2
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %192 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %191, i32 0, i32 1
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %195, align 8
  %197 = load i32, i32* %5, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0)
  %205 = call i32 (i32, i8*, i32, ...) @vxge_debug_init(i32 %185, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %190, i8* %204)
  %206 = load i32, i32* @VXGE_TRACE, align 4
  %207 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %208 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %207, i32 0, i32 2
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %213 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %212, i32 0, i32 1
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %216, align 8
  %218 = load i32, i32* %5, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @vxge_debug_ll_config(i32 %206, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 %211, i32 %223)
  br label %228

225:                                              ; preds = %165
  %226 = load i32, i32* %5, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %5, align 4
  br label %156

228:                                              ; preds = %166, %156
  ret void
}

declare dso_local i32 @vxge_debug_init(i32, i8*, i32, ...) #1

declare dso_local i32 @vxge_bVALn(i32, i32, i32) #1

declare dso_local i32 @vxge_debug_ll_config(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
